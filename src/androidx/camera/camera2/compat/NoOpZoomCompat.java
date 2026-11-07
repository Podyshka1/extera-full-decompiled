package androidx.camera.camera2.compat;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Landroidx/camera/camera2/compat/NoOpZoomCompat;", "Landroidx/camera/camera2/compat/ZoomCompat;", "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;)V", "minZoomRatio", _UrlKt.FRAGMENT_ENCODE_SET, "getMinZoomRatio", "()F", "maxZoomRatio", "getMaxZoomRatio", "applyAsync", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "zoomRatio", "requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "resetAsync", "getCropSensorRegion", "Landroid/graphics/Rect;", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class NoOpZoomCompat implements ZoomCompat {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<CameraCharacteristics.Key<Rect>> requiredCharacteristics = CollectionsKt.listOf(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
    private final CameraProperties cameraProperties;
    private final float minZoomRatio = 1.0f;
    private final float maxZoomRatio = 1.0f;

    public NoOpZoomCompat(CameraProperties cameraProperties) {
        this.cameraProperties = cameraProperties;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred<Unit> applyAsync(float zoomRatio, UseCaseCameraRequestControl requestControl) {
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred<Unit> resetAsync(UseCaseCameraRequestControl requestControl) {
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Rect getCropSensorRegion() {
        return CameraMetadataSafeGetterKt.getActiveArraySizeSafely(this.cameraProperties.getMetadata());
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R*\u0010\u0004\u001a\u001b\u0012\u0017\u0012\u0015\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u00070\u0006¢\u0006\u0002\b\t0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/compat/NoOpZoomCompat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "requiredCharacteristics", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CameraCharacteristics$Key;", "Landroid/graphics/Rect;", "kotlin.jvm.PlatformType", "Lkotlin/jvm/internal/EnhancedNullability;", "getRequiredCharacteristics", "()Ljava/util/List;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<CameraCharacteristics.Key<Rect>> getRequiredCharacteristics() {
            return NoOpZoomCompat.requiredCharacteristics;
        }
    }
}
