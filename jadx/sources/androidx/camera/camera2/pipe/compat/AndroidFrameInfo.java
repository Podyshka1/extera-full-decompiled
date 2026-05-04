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
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidFrameInfo implements FrameInfo {
    private final String camera;
    private final Map physicalResults;
    private final RequestMetadata requestMetadata;
    private final AndroidFrameMetadata result;
    private final TotalCaptureResult totalCaptureResult;

    public /* synthetic */ AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata, DefaultConstructorMarker defaultConstructorMarker) {
        this(totalCaptureResult, str, requestMetadata);
    }

    private AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String camera, RequestMetadata requestMetadata) {
        Map physicalCaptureResults;
        Map mapEmptyMap;
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        this.totalCaptureResult = totalCaptureResult;
        this.camera = camera;
        this.requestMetadata = requestMetadata;
        this.result = new AndroidFrameMetadata(totalCaptureResult, m1805getCameraDz_R5H8(), null);
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("physicalCaptureResults");
            int i = Build.VERSION.SDK_INT;
            if (i >= 31) {
                physicalCaptureResults = Api31Compat.getPhysicalCameraTotalResults(this.totalCaptureResult);
                Intrinsics.checkNotNull(physicalCaptureResults, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, android.hardware.camera2.CaptureResult>");
            } else {
                physicalCaptureResults = i >= 28 ? Api28Compat.getPhysicalCaptureResults(this.totalCaptureResult) : MapsKt.emptyMap();
            }
            if (physicalCaptureResults != null && !physicalCaptureResults.isEmpty()) {
                mapEmptyMap = new ArrayMap(physicalCaptureResults.size());
                for (Map.Entry entry : physicalCaptureResults.entrySet()) {
                    String strM1603constructorimpl = CameraId.m1603constructorimpl((String) entry.getKey());
                    mapEmptyMap.put(CameraId.m1602boximpl(strM1603constructorimpl), new AndroidFrameMetadata((CaptureResult) entry.getValue(), strM1603constructorimpl, null));
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

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    public String m1805getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    public FrameMetadata getMetadata() {
        return this.result;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        TotalCaptureResult totalCaptureResult;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureResult.class))) {
            TotalCaptureResult totalCaptureResult2 = this.totalCaptureResult;
            Intrinsics.checkNotNull(totalCaptureResult2, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidFrameInfo.unwrapAs");
            return totalCaptureResult2;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(TotalCaptureResult.class)) || (totalCaptureResult = this.totalCaptureResult) == null) {
            return null;
        }
        return totalCaptureResult;
    }

    public String toString() {
        return "FrameInfo(camera: " + ((Object) CameraId.m1607toStringimpl(this.result.mo1640getCameraDz_R5H8())) + ", frameNumber: " + this.result.mo1641getFrameNumberUgla2oM() + ')';
    }
}
