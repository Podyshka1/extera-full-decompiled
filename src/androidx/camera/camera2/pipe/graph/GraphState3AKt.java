package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a#\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/camera2/pipe/graph/State3A;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "toCaptureRequestParameterMap", "(Landroidx/camera/camera2/pipe/graph/State3A;)Ljava/util/Map;", "camera-camera2-pipe"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphState3A.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphState3A.kt\nandroidx/camera/camera2/pipe/graph/GraphState3AKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,154:1\n1#2:155\n37#3:156\n36#3,3:157\n37#3:160\n36#3,3:161\n37#3:164\n36#3,3:165\n*S KotlinDebug\n*F\n+ 1 GraphState3A.kt\nandroidx/camera/camera2/pipe/graph/GraphState3AKt\n*L\n55#1:156\n55#1:157,3\n56#1:160\n56#1:161,3\n57#1:164\n57#1:165,3\n*E\n"})
public abstract class GraphState3AKt {
    public static final Map<CaptureRequest.Key<?>, Object> toCaptureRequestParameterMap(State3A state3A) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AeMode aeMode = state3A.getAeMode();
        if (aeMode != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(aeMode.getValue()));
        }
        AfMode afMode = state3A.getAfMode();
        if (afMode != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(afMode.getValue()));
        }
        AwbMode awbMode = state3A.getAwbMode();
        if (awbMode != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(awbMode.getValue()));
        }
        FlashMode flashMode = state3A.getFlashMode();
        if (flashMode != null) {
            linkedHashMap.put(CaptureRequest.FLASH_MODE, Integer.valueOf(flashMode.getValue()));
        }
        List<MeteringRectangle> aeRegions = state3A.getAeRegions();
        if (aeRegions != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AE_REGIONS, aeRegions.toArray(new MeteringRectangle[0]));
        }
        List<MeteringRectangle> afRegions = state3A.getAfRegions();
        if (afRegions != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AF_REGIONS, afRegions.toArray(new MeteringRectangle[0]));
        }
        List<MeteringRectangle> awbRegions = state3A.getAwbRegions();
        if (awbRegions != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AWB_REGIONS, awbRegions.toArray(new MeteringRectangle[0]));
        }
        Boolean aeLock = state3A.getAeLock();
        if (aeLock != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AE_LOCK, aeLock);
        }
        Boolean awbLock = state3A.getAwbLock();
        if (awbLock != null) {
            linkedHashMap.put(CaptureRequest.CONTROL_AWB_LOCK, awbLock);
        }
        return linkedHashMap;
    }
}
