package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import androidx.camera.camera2.impl.CameraCallbackMap$$ExternalSyntheticApiModelOutline0;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2RequestMetadata implements RequestMetadata {
    private final CameraCaptureSessionWrapper cameraCaptureSessionWrapper;
    private final CaptureRequest captureRequest;
    private final Map defaultParameters;
    private final Map graphParameters;
    private final boolean repeating;
    private final Request request;
    private final long requestNumber;
    private final Map requiredParameters;
    private final Map streams;
    private final int template;

    public /* synthetic */ Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map map, Map map2, Map map3, Map map4, int i, boolean z, Request request, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraCaptureSessionWrapper, captureRequest, map, map2, map3, map4, i, z, request, j);
    }

    private Camera2RequestMetadata(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, CaptureRequest captureRequest, Map defaultParameters, Map graphParameters, Map requiredParameters, Map streams, int i, boolean z, Request request, long j) {
        Intrinsics.checkNotNullParameter(cameraCaptureSessionWrapper, "cameraCaptureSessionWrapper");
        Intrinsics.checkNotNullParameter(captureRequest, "captureRequest");
        Intrinsics.checkNotNullParameter(defaultParameters, "defaultParameters");
        Intrinsics.checkNotNullParameter(graphParameters, "graphParameters");
        Intrinsics.checkNotNullParameter(requiredParameters, "requiredParameters");
        Intrinsics.checkNotNullParameter(streams, "streams");
        Intrinsics.checkNotNullParameter(request, "request");
        this.cameraCaptureSessionWrapper = cameraCaptureSessionWrapper;
        this.captureRequest = captureRequest;
        this.defaultParameters = defaultParameters;
        this.graphParameters = graphParameters;
        this.requiredParameters = requiredParameters;
        this.streams = streams;
        this.template = i;
        this.repeating = z;
        this.request = request;
        this.requestNumber = j;
    }

    @Override // androidx.camera.camera2.pipe.RequestMetadata
    public Map getStreams() {
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
    /* JADX INFO: renamed from: getRequestNumber-my6kx4g */
    public long mo1442getRequestNumbermy6kx4g() {
        return this.requestNumber;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public Object get(Metadata.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.requiredParameters.containsKey(key)) {
            return this.requiredParameters.get(key);
        }
        if (getRequest().getExtras().containsKey(key)) {
            return getRequest().getExtras().get(key);
        }
        if (this.graphParameters.containsKey(key)) {
            return this.graphParameters.get(key);
        }
        return this.defaultParameters.get(key);
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public Object getOrDefault(Metadata.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj2 = get(key);
        return obj2 == null ? obj : obj2;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureRequest.class))) {
            CaptureRequest captureRequest = this.captureRequest;
            Intrinsics.checkNotNull(captureRequest, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.Camera2RequestMetadata.unwrapAs");
            return captureRequest;
        }
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCaptureSession.class))) {
            Object objUnwrapAs = this.cameraCaptureSessionWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCaptureSession.class));
            if (objUnwrapAs == null) {
                return null;
            }
            return objUnwrapAs;
        }
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m25m()))) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 31) {
            throw new IllegalStateException("Check failed.");
        }
        Object objUnwrapAs2 = this.cameraCaptureSessionWrapper.unwrapAs(Reflection.getOrCreateKotlinClass(CameraCallbackMap$$ExternalSyntheticApiModelOutline0.m25m()));
        if (objUnwrapAs2 == null) {
            return null;
        }
        return objUnwrapAs2;
    }
}
