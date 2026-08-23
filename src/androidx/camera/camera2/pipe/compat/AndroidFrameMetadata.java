package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidFrameMetadata implements FrameMetadata {
    private final String camera;
    private final CaptureResult captureResult;
    private final Map extraMetadata;

    public /* synthetic */ AndroidFrameMetadata(CaptureResult captureResult, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureResult, str);
    }

    private AndroidFrameMetadata(CaptureResult captureResult, String camera) {
        Intrinsics.checkNotNullParameter(captureResult, "captureResult");
        Intrinsics.checkNotNullParameter(camera, "camera");
        this.captureResult = captureResult;
        this.camera = camera;
        this.extraMetadata = MapsKt.emptyMap();
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo1640getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public Object get(CaptureResult.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = getExtraMetadata().get(key);
        return obj == null ? this.captureResult.get(key) : obj;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public Object getOrDefault(CaptureResult.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj2 = get(key);
        return obj2 == null ? obj : obj2;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo1641getFrameNumberUgla2oM() {
        return FrameNumber.m1643constructorimpl(this.captureResult.getFrameNumber());
    }

    public Map getExtraMetadata() {
        return this.extraMetadata;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        CaptureResult captureResult;
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureResult.class))) {
            CaptureResult captureResult2 = this.captureResult;
            Intrinsics.checkNotNull(captureResult2, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidFrameMetadata.unwrapAs");
            return captureResult2;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(TotalCaptureResult.class)) || (captureResult = this.captureResult) == null) {
            return null;
        }
        return captureResult;
    }

    public String toString() {
        return "FrameMetadata(camera: " + ((Object) CameraId.m1607toStringimpl(mo1640getCameraDz_R5H8())) + ", frameNumber: " + this.captureResult.getFrameNumber() + ')';
    }
}
