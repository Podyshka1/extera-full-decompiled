package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.view.Surface;
import androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticApiModelOutline0;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0000\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0012\u0010\t\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J&\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010\u001e\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00192\u0006\u0010\u001d\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ)\u0010\"\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0018*\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 H\u0016¢\u0006\u0004\b\"\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010%R \u0010\b\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010&R \u0010\t\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010&R \u0010\n\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010&R&\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010&\u001a\u0004\b'\u0010(R\u001a\u0010\u000f\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010)\u001a\u0004\b*\u0010+R\u001a\u0010\u0011\u001a\u00020\u00108\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010,\u001a\u0004\b-\u0010.R\u001a\u0010\u0013\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010/\u001a\u0004\b0\u00101R\u001a\u0010\u0015\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u00102\u001a\u0004\b3\u00104¨\u00065"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;", "Landroidx/camera/camera2/pipe/RequestMetadata;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "cameraCaptureSessionWrapper", "Landroid/hardware/camera2/CaptureRequest;", "captureRequest", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "defaultParameters", "graphParameters", "requiredParameters", "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "streams", "Landroidx/camera/camera2/pipe/RequestTemplate;", "template", _UrlKt.FRAGMENT_ENCODE_SET, "repeating", "Landroidx/camera/camera2/pipe/Request;", PluginsConstants.REQUEST, "Landroidx/camera/camera2/pipe/RequestNumber;", "requestNumber", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "T", "Landroidx/camera/camera2/pipe/Metadata$Key;", PluginsConstants.Settings.KEY, "get", "(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;", PluginsConstants.Settings.DEFAULT, "getOrDefault", "(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "Landroid/hardware/camera2/CaptureRequest;", "Ljava/util/Map;", "getStreams", "()Ljava/util/Map;", "I", "getTemplate-fGx8uWA", "()I", "Z", "getRepeating", "()Z", "Landroidx/camera/camera2/pipe/Request;", "getRequest", "()Landroidx/camera/camera2/pipe/Request;", "J", "getRequestNumber-my6kx4g", "()J", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class Camera2RequestMetadata implements RequestMetadata {
    private final CameraCaptureSessionWrapper cameraCaptureSessionWrapper;
    private final CaptureRequest captureRequest;
    private final Map<?, Object> defaultParameters;
    private final Map<?, Object> graphParameters;
    private final boolean repeating;
    private final Request request;
    private final long requestNumber;
    private final Map<?, Object> requiredParameters;
    private final Map<StreamId, Surface> streams;
    private final int template;

    public /* synthetic */ Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map map, Map map2, Map map3, Map map4, int i, boolean z, Request request, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCaptureSessionWrapper, captureRequest, map, map2, map3, map4, i, z, request, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map<?, ? extends Object> map, Map<?, ? extends Object> map2, Map<?, ? extends Object> map3, Map<StreamId, ? extends Surface> map4, int i, boolean z, Request request, long j) {
        this.cameraCaptureSessionWrapper = cameraCaptureSessionWrapper;
        this.captureRequest = captureRequest;
        this.defaultParameters = map;
        this.graphParameters = map2;
        this.requiredParameters = map3;
        this.streams = map4;
        this.template = i;
        this.repeating = z;
        this.request = request;
        this.requestNumber = j;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public Map<StreamId, Surface> getStreams() {
        return this.streams;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public boolean getRepeating() {
        return this.repeating;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public Request getRequest() {
        return this.request;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    /* JADX INFO: renamed from: getRequestNumber-my6kx4g, reason: from getter */
    public long getRequestNumber() {
        return this.requestNumber;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        if (this.requiredParameters.containsKey(key)) {
            return (T) this.requiredParameters.get(key);
        }
        if (getRequest().getExtras().containsKey(key)) {
            return (T) getRequest().getExtras().get(key);
        }
        if (this.graphParameters.containsKey(key)) {
            return (T) this.graphParameters.get(key);
        }
        return (T) this.defaultParameters.get(key);
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureRequest.class))) {
            return (T) this.captureRequest;
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCaptureSession.class))) {
            T t = (T) this.cameraCaptureSessionWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
            if (t == null) {
                return null;
            }
            return t;
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m27m()))) {
            if (Build.VERSION.SDK_INT < 31) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
            } else {
                T t2 = (T) this.cameraCaptureSessionWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m27m()));
                if (t2 == null) {
                    return null;
                }
                return t2;
            }
        }
        return null;
    }
}
