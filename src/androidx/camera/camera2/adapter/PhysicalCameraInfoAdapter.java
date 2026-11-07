package androidx.camera.camera2.adapter;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraMetadata;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraState;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.view.LiveData;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\fJ\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00010\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010%\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\"*\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0017¢\u0006\u0004\b%\u0010&R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010'R!\u0010/\u001a\u00020(8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b)\u0010*\u0012\u0004\b-\u0010.\u001a\u0004\b+\u0010,¨\u00060"}, d2 = {"Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;", "Landroidx/camera/core/CameraInfo;", "Landroidx/camera/camera2/pipe/UnsafeWrapper;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;)V", _UrlKt.FRAGMENT_ENCODE_SET, "lensFacingInt", "getCameraSelectorLensFacing", "(I)I", "getSensorRotationDegrees", "()I", "relativeRotation", _UrlKt.FRAGMENT_ENCODE_SET, "hasFlashUnit", "()Z", "Landroidx/lifecycle/LiveData;", "Landroidx/camera/core/ZoomState;", "getZoomState", "()Landroidx/lifecycle/LiveData;", "Landroidx/camera/core/CameraState;", "getCameraState", "getLensFacing", _UrlKt.FRAGMENT_ENCODE_SET, "getIntrinsicZoomRatio", "()F", _UrlKt.FRAGMENT_ENCODE_SET, "getPhysicalCameraInfos", "()Ljava/util/Set;", "Landroidx/camera/core/CameraIdentifier;", "getCameraIdentifier", "()Landroidx/camera/core/CameraIdentifier;", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/interop/Camera2CameraInfo;", "camera2CameraInfo$delegate", "Lkotlin/Lazy;", "getCamera2CameraInfo$camera_camera2", "()Landroidx/camera/camera2/interop/Camera2CameraInfo;", "getCamera2CameraInfo$camera_camera2$annotations", "()V", "camera2CameraInfo", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"UnsafeOptInUsageError"})
public final class PhysicalCameraInfoAdapter implements CameraInfo, UnsafeWrapper {

    /* JADX INFO: renamed from: camera2CameraInfo$delegate, reason: from kotlin metadata */
    private final Lazy camera2CameraInfo = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.PhysicalCameraInfoAdapter$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Camera2CameraInfo.INSTANCE.create(this.f$0.cameraProperties);
        }
    });
    private final CameraProperties cameraProperties;

    public PhysicalCameraInfoAdapter(CameraProperties cameraProperties) {
        this.cameraProperties = cameraProperties;
    }

    public final Camera2CameraInfo getCamera2CameraInfo$camera_camera2() {
        return (Camera2CameraInfo) this.camera2CameraInfo.getValue();
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees(int relativeRotation) {
        return CameraOrientationUtil.getRelativeImageRotation(CameraOrientationUtil.surfaceRotationToDegrees(relativeRotation), ((Number) this.cameraProperties.getMetadata().get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<ZoomState> getZoomState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData<CameraState> getCameraState() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public int getLensFacing() {
        return getCameraSelectorLensFacing(((Number) this.cameraProperties.getMetadata().get(CameraCharacteristics.LENS_FACING)).intValue());
    }

    @Override // androidx.camera.core.CameraInfo
    public float getIntrinsicZoomRatio() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public Set<CameraInfo> getPhysicalCameraInfos() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public CameraIdentifier getCameraIdentifier() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class))) {
            return (T) getCamera2CameraInfo$camera_camera2();
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraProperties.class))) {
            return (T) this.cameraProperties;
        }
        boolean zAreEqual = Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraMetadata.class));
        CameraProperties cameraProperties = this.cameraProperties;
        if (zAreEqual) {
            return (T) cameraProperties.getMetadata();
        }
        return (T) cameraProperties.getMetadata().unwrapAs(type);
    }

    private final int getCameraSelectorLensFacing(int lensFacingInt) {
        if (lensFacingInt == 0) {
            return 0;
        }
        if (lensFacingInt == 1) {
            return 1;
        }
        if (lensFacingInt == 2) {
            return 2;
        }
        CharsKt__CharKt$$ExternalSyntheticBUOutline0.m936m("The specified lens facing integer ", lensFacingInt, " can not be recognized.");
        return 0;
    }
}
