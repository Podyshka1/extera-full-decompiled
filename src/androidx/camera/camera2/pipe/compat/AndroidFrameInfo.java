package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ)\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u000b*\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006#"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;", "Landroidx/camera/camera2/pipe/FrameInfo;", "Landroid/hardware/camera2/TotalCaptureResult;", "totalCaptureResult", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "Landroidx/camera/camera2/pipe/RequestMetadata;", "requestMetadata", "<init>", "(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/hardware/camera2/TotalCaptureResult;", "Ljava/lang/String;", "getCamera-Dz_R5H8", "Landroidx/camera/camera2/pipe/RequestMetadata;", "getRequestMetadata", "()Landroidx/camera/camera2/pipe/RequestMetadata;", "Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;", "result", "Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/FrameMetadata;", "physicalResults", "Ljava/util/Map;", "getMetadata", "()Landroidx/camera/camera2/pipe/FrameMetadata;", "metadata", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFrameMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameMetadata.kt\nandroidx/camera/camera2/pipe/compat/AndroidFrameInfo\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,145:1\n48#2,2:146\n71#2,4:148\n50#2,3:152\n78#2,4:155\n*S KotlinDebug\n*F\n+ 1 FrameMetadata.kt\nandroidx/camera/camera2/pipe/compat/AndroidFrameInfo\n*L\n99#1:146,2\n99#1:148,4\n99#1:152,3\n99#1:155,4\n*E\n"})
public final class AndroidFrameInfo implements FrameInfo {
    private final String camera;
    private final Map<CameraId, FrameMetadata> physicalResults;
    private final RequestMetadata requestMetadata;
    private final AndroidFrameMetadata result;
    private final TotalCaptureResult totalCaptureResult;

    public /* synthetic */ AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata, DefaultConstructorMarker defaultConstructorMarker) {
        this(totalCaptureResult, str, requestMetadata);
    }

    private AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata) {
        Map<String, CaptureResult> physicalCaptureResults;
        Map<CameraId, FrameMetadata> mapEmptyMap;
        this.totalCaptureResult = totalCaptureResult;
        this.camera = str;
        this.requestMetadata = requestMetadata;
        this.result = new AndroidFrameMetadata(totalCaptureResult, getCamera(), null);
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("physicalCaptureResults");
            int i = Build.VERSION.SDK_INT;
            if (i >= 31) {
                physicalCaptureResults = Api31Compat.getPhysicalCameraTotalResults(this.totalCaptureResult);
            } else {
                physicalCaptureResults = i >= 28 ? Api28Compat.getPhysicalCaptureResults(this.totalCaptureResult) : MapsKt.emptyMap();
            }
            if (physicalCaptureResults != null && !physicalCaptureResults.isEmpty()) {
                mapEmptyMap = new ArrayMap<>(physicalCaptureResults.size());
                for (Map.Entry<String, CaptureResult> entry : physicalCaptureResults.entrySet()) {
                    String strM1299constructorimpl = CameraId.m1299constructorimpl(entry.getKey());
                    mapEmptyMap.put(CameraId.m1298boximpl(strM1299constructorimpl), new AndroidFrameMetadata(entry.getValue(), strM1299constructorimpl, null));
                }
            } else {
                mapEmptyMap = MapsKt.emptyMap();
            }
            Trace.endSection();
            this.physicalResults = mapEmptyMap;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name and from getter */
    public String getCamera() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    public FrameMetadata getMetadata() {
        return this.result;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        T t;
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureResult.class))) {
            return (T) this.totalCaptureResult;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(TotalCaptureResult.class)) || (t = (T) this.totalCaptureResult) == null) {
            return null;
        }
        return t;
    }

    public String toString() {
        return "FrameInfo(camera: " + ((Object) CameraId.m1303toStringimpl(this.result.getCamera())) + ", frameNumber: " + this.result.mo1337getFrameNumberUgla2oM() + ')';
    }
}
