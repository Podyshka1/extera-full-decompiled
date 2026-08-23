package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0018\u001a\u0004\u0018\u00010\u00132\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001a\u001a\u0004\u0018\u00010\u00132\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J!\u0010\u001b\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001b\u0010\u0015J\u000f\u0010\u001c\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u000eJ\u001d\u0010\u001f\u001a\u00020\f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0016H\u0017¢\u0006\u0004\b\u001f\u0010 J)\u0010%\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\"*\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010*\u001a\u0004\b+\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010.R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010/R\u001a\u00101\u001a\u0002008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0016\u00108\u001a\u0004\u0018\u0001058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u00069"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "device", "Landroid/hardware/camera2/CameraCaptureSession;", "cameraCaptureSession", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "cameraErrorListener", "Landroid/os/Handler;", "callbackHandler", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V", _UrlKt.FRAGMENT_ENCODE_SET, "abortCaptures", "()Z", "Landroid/hardware/camera2/CaptureRequest;", "request", "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "listener", _UrlKt.FRAGMENT_ENCODE_SET, "capture", "(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;", _UrlKt.FRAGMENT_ENCODE_SET, "requests", "captureBurst", "(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;", "setRepeatingBurst", "setRepeatingRequest", "stopRepeating", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigs", "finalizeOutputConfigurations", "(Ljava/util/List;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", TeXSymbolParser.TYPE_ATTR, "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "close", "()V", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "getDevice", "()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "Landroid/hardware/camera2/CameraCaptureSession;", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "Landroid/os/Handler;", "Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", "id", "I", "getId-159jkk4", "()I", "Landroid/view/Surface;", "getInputSurface", "()Landroid/view/Surface;", "inputSurface", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 3 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 6 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n337#1:402\n338#1:411\n339#1:459\n337#1:460\n338#1:469\n339#1:517\n337#1:518\n338#1:527\n339#1:575\n337#1:576\n338#1:585\n339#1:633\n337#1:634\n338#1:643\n339#1:691\n337#1:692\n338#1:701\n339#1:749\n337#1:750\n338#1:759\n339#1:811\n58#2,3:403\n71#2,4:406\n61#2:410\n63#2:449\n78#2,4:450\n64#2:454\n65#2:456\n58#2,3:461\n71#2,4:464\n61#2:468\n63#2:507\n78#2,4:508\n64#2:512\n65#2:514\n58#2,3:519\n71#2,4:522\n61#2:526\n63#2:565\n78#2,4:566\n64#2:570\n65#2:572\n58#2,3:577\n71#2,4:580\n61#2:584\n63#2:623\n78#2,4:624\n64#2:628\n65#2:630\n58#2,3:635\n71#2,4:638\n61#2:642\n63#2:681\n78#2,4:682\n64#2:686\n65#2:688\n58#2,3:693\n71#2,4:696\n61#2:700\n63#2:739\n78#2,4:740\n64#2:744\n65#2:746\n58#2,3:751\n71#2,4:754\n61#2:758\n63#2:801\n78#2,4:802\n64#2:806\n65#2:808\n58#2,3:812\n71#2,4:815\n61#2:819\n63#2:857\n78#2,4:858\n64#2:862\n65#2:864\n53#3,6:412\n59#3,24:420\n83#3,3:446\n53#3,6:470\n59#3,24:478\n83#3,3:504\n53#3,6:528\n59#3,24:536\n83#3,3:562\n53#3,6:586\n59#3,24:594\n83#3,3:620\n53#3,6:644\n59#3,24:652\n83#3,3:678\n53#3,6:702\n59#3,24:710\n83#3,3:736\n53#3,2:760\n55#3,4:766\n59#3,24:772\n83#3,3:798\n53#3,6:820\n59#3,24:828\n83#3,3:854\n71#4,2:418\n50#4,2:444\n71#4,2:476\n50#4,2:502\n71#4,2:534\n50#4,2:560\n71#4,2:592\n50#4,2:618\n71#4,2:650\n50#4,2:676\n71#4,2:708\n50#4,2:734\n71#4,2:770\n50#4,2:796\n71#4,2:826\n50#4,2:852\n50#4:865\n51#4:868\n29#5:455\n29#5:513\n29#5:571\n29#5:629\n29#5:687\n29#5:745\n29#5:807\n29#5:863\n74#6,2:457\n74#6,2:515\n74#6,2:573\n74#6,2:631\n74#6,2:689\n74#6,2:747\n74#6,2:809\n74#6,2:866\n1563#7:762\n1634#7,3:763\n*S KotlinDebug\n*F\n+ 1 CaptureSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession\n*L\n259#1:402\n259#1:411\n259#1:459\n265#1:460\n265#1:469\n265#1:517\n273#1:518\n273#1:527\n273#1:575\n281#1:576\n281#1:585\n281#1:633\n289#1:634\n289#1:643\n289#1:691\n294#1:692\n294#1:701\n294#1:749\n315#1:750\n315#1:759\n315#1:811\n259#1:403,3\n259#1:406,4\n259#1:410\n259#1:449\n259#1:450,4\n259#1:454\n259#1:456\n265#1:461,3\n265#1:464,4\n265#1:468\n265#1:507\n265#1:508,4\n265#1:512\n265#1:514\n273#1:519,3\n273#1:522,4\n273#1:526\n273#1:565\n273#1:566,4\n273#1:570\n273#1:572\n281#1:577,3\n281#1:580,4\n281#1:584\n281#1:623\n281#1:624,4\n281#1:628\n281#1:630\n289#1:635,3\n289#1:638,4\n289#1:642\n289#1:681\n289#1:682,4\n289#1:686\n289#1:688\n294#1:693,3\n294#1:696,4\n294#1:700\n294#1:739\n294#1:740,4\n294#1:744\n294#1:746\n315#1:751,3\n315#1:754,4\n315#1:758\n315#1:801\n315#1:802,4\n315#1:806\n315#1:808\n337#1:812,3\n337#1:815,4\n337#1:819\n337#1:857\n337#1:858,4\n337#1:862\n337#1:864\n259#1:412,6\n259#1:420,24\n259#1:446,3\n265#1:470,6\n265#1:478,24\n265#1:504,3\n273#1:528,6\n273#1:536,24\n273#1:562,3\n281#1:586,6\n281#1:594,24\n281#1:620,3\n289#1:644,6\n289#1:652,24\n289#1:678,3\n294#1:702,6\n294#1:710,24\n294#1:736,3\n315#1:760,2\n315#1:766,4\n315#1:772,24\n315#1:798,3\n338#1:820,6\n338#1:828,24\n338#1:854,3\n259#1:418,2\n259#1:444,2\n265#1:476,2\n265#1:502,2\n273#1:534,2\n273#1:560,2\n281#1:592,2\n281#1:618,2\n289#1:650,2\n289#1:676,2\n294#1:708,2\n294#1:734,2\n315#1:770,2\n315#1:796,2\n338#1:826,2\n338#1:852,2\n337#1:865\n337#1:868\n259#1:455\n265#1:513\n273#1:571\n281#1:629\n289#1:687\n294#1:745\n315#1:807\n337#1:863\n259#1:457,2\n265#1:515,2\n273#1:573,2\n281#1:631,2\n289#1:689,2\n294#1:747,2\n315#1:809,2\n337#1:866,2\n318#1:762\n318#1:763,3\n*E\n"})
public class AndroidCameraCaptureSession implements CameraCaptureSessionWrapper {
    private final Handler callbackHandler;
    private final CameraCaptureSession cameraCaptureSession;
    private final CameraErrorListener cameraErrorListener;
    private final CameraDeviceWrapper device;
    private final int id = CameraInterop.CameraCaptureSessionId.m1216constructorimpl(CameraInterop.captureSessionIds.incrementAndGet());

    public AndroidCameraCaptureSession(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener, Handler handler) {
        this.device = cameraDeviceWrapper;
        this.cameraCaptureSession = cameraCaptureSession;
        this.cameraErrorListener = cameraErrorListener;
        this.callbackHandler = handler;
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
        String str = "CXCP#abortCaptures-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    this.cameraCaptureSession.abortCaptures();
                    unit = Unit.INSTANCE;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return unit != null;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / d)}, 1)));
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
        String str = "CXCP#stopRepeating-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            Trace.beginSection(str);
            String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            d = 1000000.0d;
            try {
                try {
                    this.cameraCaptureSession.stopRepeating();
                    unit = Unit.INSTANCE;
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return unit != null;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / d)}, 1)));
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
    /* JADX INFO: renamed from: getId-159jkk4, reason: not valid java name and from getter */
    public int getId() {
        return this.id;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    public Surface getInputSurface() {
        return this.cameraCaptureSession.getInputSurface();
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x016d  */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean finalizeOutputConfigurations(List<? extends OutputConfigurationWrapper> outputConfigs) throws Throwable {
        double d;
        Unit unit;
        CameraCaptureSession cameraCaptureSession;
        List<? extends OutputConfigurationWrapper> list;
        if (Build.VERSION.SDK_INT < 26) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Attempting to call finalizeOutputConfigurations before O is not supported and may lead to to unexpected behavior if an application is expects this call to succeed.");
            return false;
        }
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#finalizeOutputConfigurations-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    cameraCaptureSession = this.cameraCaptureSession;
                    list = outputConfigs;
                    d = 1000000.0d;
                } catch (Exception e) {
                    e = e;
                    d = 1000000.0d;
                }
                try {
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class)));
                    }
                    Api26Compat.finalizeOutputConfigurations(cameraCaptureSession, arrayList);
                    unit = Unit.INSTANCE;
                } catch (Exception e2) {
                    e = e2;
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return unit != null;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1477constructorimpl22 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCaptureSession.class))) {
            return (T) this.cameraCaptureSession;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.cameraCaptureSession.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Integer capture(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Throwable {
        double d;
        Integer numValueOf;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#capture-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.capture(request, listener, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return numValueOf;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1477constructorimpl22 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Integer captureBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback listener) throws Throwable {
        double d;
        Integer numValueOf;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#captureBurst-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.captureBurst(requests, listener, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return numValueOf;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1477constructorimpl22 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Integer setRepeatingBurst(List<CaptureRequest> requests, CameraCaptureSession.CaptureCallback listener) throws Throwable {
        double d;
        Integer numValueOf;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingBurst-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingBurst(requests, listener, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return numValueOf;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1477constructorimpl22 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x013a  */
    @Override // androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Integer setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback listener) throws Throwable {
        double d;
        Integer numValueOf;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#setRepeatingRequest-" + getDevice().mo1393getCameraIdDz_R5H8();
        long jMo1485nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String strMo1393getCameraIdDz_R5H8 = getDevice().mo1393getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        numValueOf = Integer.valueOf(this.cameraCaptureSession.setRepeatingRequest(request, listener, this.callbackHandler));
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1428onCameraError3M5Xam4(strMo1393getCameraIdDz_R5H8, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1477constructorimpl = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return numValueOf;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1477constructorimpl2 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1477constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1477constructorimpl22 = DurationNs.m1477constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1485nowvQl9yQU() - jMo1485nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }
}
