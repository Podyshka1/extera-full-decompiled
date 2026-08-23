package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\u000b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u000e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0013\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\b*\u00020\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0019\u001a\u0004\b\u001a\u0010\u0017R&\u0010\u001c\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;", "Landroidx/camera/camera2/pipe/FrameMetadata;", "Landroid/hardware/camera2/CaptureResult;", "captureResult", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "<init>", "(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "T", "Landroid/hardware/camera2/CaptureResult$Key;", "key", "get", "(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;", "default", "getOrDefault", "(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", TeXSymbolParser.TYPE_ATTR, "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/hardware/camera2/CaptureResult;", "Ljava/lang/String;", "getCamera-Dz_R5H8", _UrlKt.FRAGMENT_ENCODE_SET, "extraMetadata", "Ljava/util/Map;", "getExtraMetadata", "()Ljava/util/Map;", "Landroidx/camera/camera2/pipe/FrameNumber;", "getFrameNumber-Ugla2oM", "()J", "frameNumber", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidFrameMetadata implements FrameMetadata {
    private final String camera;
    private final CaptureResult captureResult;
    private final Map<?, Object> extraMetadata;

    public /* synthetic */ AndroidFrameMetadata(CaptureResult captureResult, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(captureResult, str);
    }

    private AndroidFrameMetadata(CaptureResult captureResult, String str) {
        this.captureResult = captureResult;
        this.camera = str;
        this.extraMetadata = MapsKt.emptyMap();
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: from getter */
    public String getCamera() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T get(CaptureResult.Key<T> key) {
        T t = (T) getExtraMetadata().get(key);
        return t == null ? (T) this.captureResult.get(key) : t;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    public <T> T getOrDefault(CaptureResult.Key<T> key, T t) {
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.FrameMetadata
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo1247getFrameNumberUgla2oM() {
        return FrameNumber.m1249constructorimpl(this.captureResult.getFrameNumber());
    }

    public Map<?, Object> getExtraMetadata() {
        return this.extraMetadata;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        T t;
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureResult.class))) {
            return (T) this.captureResult;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(TotalCaptureResult.class)) || (t = (T) this.captureResult) == null) {
            return null;
        }
        return t;
    }

    public String toString() {
        return "FrameMetadata(camera: " + ((Object) CameraId.m1213toStringimpl(getCamera())) + ", frameNumber: " + this.captureResult.getFrameNumber() + ')';
    }
}
