package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraExtensionMetadata implements CameraExtensionMetadata {
    private final Lazy _isCaptureProgressSupported;
    private final Lazy _isPostviewSupported;
    private final Lazy _requestKeys;
    private final Lazy _resultKeys;
    private final String camera;
    private final int cameraExtension;
    private final CameraExtensionCharacteristics extensionCharacteristics;
    private final boolean isRedacted;
    private final Map metadata;
    private final Map supportedExtensionSizesByClass;
    private final Map supportedExtensionSizesByFormat;
    private final Map supportedPostviewSizes;

    public /* synthetic */ Camera2CameraExtensionMetadata(String str, boolean z, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, i, cameraExtensionCharacteristics, map);
    }

    private Camera2CameraExtensionMetadata(String camera, boolean z, int i, CameraExtensionCharacteristics extensionCharacteristics, Map metadata) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        this.camera = camera;
        this.isRedacted = z;
        this.cameraExtension = i;
        this.extensionCharacteristics = extensionCharacteristics;
        this.metadata = metadata;
        this.supportedExtensionSizesByFormat = new LinkedHashMap();
        this.supportedExtensionSizesByClass = new LinkedHashMap();
        this.supportedPostviewSizes = new LinkedHashMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this._requestKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1
            @Override // kotlin.jvm.functions.Function0
            public final Set invoke() {
                Set setEmptySet;
                String str = ((Object) CameraId.m1607toStringimpl(this.this$0.m1816getCameraDz_R5H8())) + "#availableCaptureRequestKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str);
                        if (Build.VERSION.SDK_INT >= 33) {
                            setEmptySet = CollectionsKt.toSet(Api33Compat.getAvailableCaptureRequestKeys(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()));
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        if (setEmptySet == null) {
                            setEmptySet = SetsKt.emptySet();
                        }
                        Trace.endSection();
                        return setEmptySet;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str + "! Caching {} and ignoring exception.", th2);
                    }
                    return SetsKt.emptySet();
                }
            }
        });
        this._resultKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2
            @Override // kotlin.jvm.functions.Function0
            public final Set invoke() {
                Set setEmptySet;
                String str = ((Object) CameraId.m1607toStringimpl(this.this$0.m1816getCameraDz_R5H8())) + "#availableCaptureResultKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str);
                        if (Build.VERSION.SDK_INT >= 33) {
                            setEmptySet = CollectionsKt.toSet(Api33Compat.getAvailableCaptureResultKeys(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()));
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        if (setEmptySet == null) {
                            setEmptySet = SetsKt.emptySet();
                        }
                        Trace.endSection();
                        return setEmptySet;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str + "! Caching {} and ignoring exception.", th2);
                    }
                    return SetsKt.emptySet();
                }
            }
        });
        this._isPostviewSupported = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                String str = ((Object) CameraId.m1607toStringimpl(this.this$0.m1816getCameraDz_R5H8())) + "#isPostviewSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str);
                        boolean zIsPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsPostviewAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
        this._isCaptureProgressSupported = LazyKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                String str = ((Object) CameraId.m1607toStringimpl(this.this$0.m1816getCameraDz_R5H8())) + "#isCaptureProgressSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str);
                        boolean zIsCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsCaptureProcessProgressAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
    }

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    public String m1816getCameraDz_R5H8() {
        return this.camera;
    }

    public int getCameraExtension() {
        return this.cameraExtension;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(C0199x84bbdc9b.m67m()))) {
            return null;
        }
        CameraExtensionCharacteristics cameraExtensionCharacteristics = this.extensionCharacteristics;
        Intrinsics.checkNotNull(cameraExtensionCharacteristics, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata.unwrapAs");
        return cameraExtensionCharacteristics;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public boolean isPostviewSupported() {
        return ((Boolean) this._isPostviewSupported.getValue()).booleanValue();
    }
}
