package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0018\u0010\r\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0013\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0010*\u00020\f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0005\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001dR&\u0010\r\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001eR,\u0010#\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0!0 0\u001f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001eR0\u0010%\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030$\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0!0 0\u001f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u0010\u001eR,\u0010&\u001a\u001a\u0012\u0004\u0012\u00020\"\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0!0 0\u001f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b&\u0010\u001eR$\u0010(\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R$\u0010+\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030*0!0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010)R\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010)R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010)R\u0014\u0010.\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010\u0019¨\u0006/"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;", "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "Landroidx/camera/camera2/pipe/CameraId;", "camera", _UrlKt.FRAGMENT_ENCODE_SET, "isRedacted", _UrlKt.FRAGMENT_ENCODE_SET, "cameraExtension", "Landroid/hardware/camera2/CameraExtensionCharacteristics;", "extensionCharacteristics", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Metadata$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "metadata", "<init>", "(Ljava/lang/String;ZILandroid/hardware/camera2/CameraExtensionCharacteristics;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Ljava/lang/String;", "getCamera-Dz_R5H8", "()Ljava/lang/String;", "Z", "()Z", "I", "getCameraExtension", "()I", "Landroid/hardware/camera2/CameraExtensionCharacteristics;", "Ljava/util/Map;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Lazy;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Size;", "supportedExtensionSizesByFormat", "Ljava/lang/Class;", "supportedExtensionSizesByClass", "supportedPostviewSizes", "Landroid/hardware/camera2/CaptureRequest$Key;", "_requestKeys", "Lkotlin/Lazy;", "Landroid/hardware/camera2/CaptureResult$Key;", "_resultKeys", "_isPostviewSupported", "_isCaptureProgressSupported", "isPostviewSupported", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CameraExtensionMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraExtensionMetadata.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata\n+ 2 Lazy.kt\nandroidx/camera/camera2/pipe/core/LazyKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,192:1\n50#2,9:193\n50#2,9:202\n27#2,9:211\n27#2,9:220\n50#2,9:232\n63#2:248\n50#2,9:249\n63#2:265\n50#2,9:266\n384#3,3:229\n387#3,4:241\n384#3,3:245\n387#3,4:258\n384#3,3:262\n387#3,4:275\n*S KotlinDebug\n*F\n+ 1 Camera2CameraExtensionMetadata.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata\n*L\n149#1:193,9\n162#1:202,9\n172#1:211,9\n181#1:220,9\n96#1:232,9\n113#1:248\n113#1:249,9\n134#1:265\n134#1:266,9\n95#1:229,3\n95#1:241,4\n112#1:245,3\n112#1:258,4\n133#1:262,3\n133#1:275,4\n*E\n"})
public final class Camera2CameraExtensionMetadata implements CameraExtensionMetadata {
    private final Lazy<Boolean> _isCaptureProgressSupported;
    private final Lazy<Boolean> _isPostviewSupported;
    private final Lazy<Set<CaptureRequest.Key<?>>> _requestKeys;
    private final Lazy<Set<CaptureResult.Key<?>>> _resultKeys;
    private final String camera;
    private final int cameraExtension;
    private final CameraExtensionCharacteristics extensionCharacteristics;
    private final boolean isRedacted;
    private final Map<Metadata.Key<?>, Object> metadata;
    private final Map<Class<?>, Lazy<Set<Size>>> supportedExtensionSizesByClass;
    private final Map<Integer, Lazy<Set<Size>>> supportedExtensionSizesByFormat;
    private final Map<Size, Lazy<Set<Size>>> supportedPostviewSizes;

    public /* synthetic */ Camera2CameraExtensionMetadata(String str, boolean z, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, i, cameraExtensionCharacteristics, map);
    }

    private Camera2CameraExtensionMetadata(String str, boolean z, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics, Map<Metadata.Key<?>, ? extends Object> map) {
        this.camera = str;
        this.isRedacted = z;
        this.cameraExtension = i;
        this.extensionCharacteristics = cameraExtensionCharacteristics;
        this.metadata = map;
        this.supportedExtensionSizesByFormat = new LinkedHashMap();
        this.supportedExtensionSizesByClass = new LinkedHashMap();
        this.supportedPostviewSizes = new LinkedHashMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this._requestKeys = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Set<? extends CaptureRequest.Key<Object>>>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1
            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends CaptureRequest.Key<Object>> invoke() {
                Set<? extends CaptureRequest.Key<Object>> setEmptySet;
                String str2 = ((Object) CameraId.m1356toStringimpl(this.this$0.getCamera())) + "#availableCaptureRequestKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
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
                        android.util.Log.w("CXCP", "Failed to get " + str2 + "! Caching {} and ignoring exception.", th2);
                    }
                    return SetsKt.emptySet();
                }
            }
        });
        this._resultKeys = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Set<? extends CaptureResult.Key<Object>>>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2
            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends CaptureResult.Key<Object>> invoke() {
                Set<? extends CaptureResult.Key<Object>> setEmptySet;
                String str2 = ((Object) CameraId.m1356toStringimpl(this.this$0.getCamera())) + "#availableCaptureResultKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
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
                        android.util.Log.w("CXCP", "Failed to get " + str2 + "! Caching {} and ignoring exception.", th2);
                    }
                    return SetsKt.emptySet();
                }
            }
        });
        this._isPostviewSupported = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Boolean>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                String str2 = ((Object) CameraId.m1356toStringimpl(this.this$0.getCamera())) + "#isPostviewSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        boolean zIsPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsPostviewAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
        this._isCaptureProgressSupported = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Boolean>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                String str2 = ((Object) CameraId.m1356toStringimpl(this.this$0.getCamera())) + "#isCaptureProgressSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        boolean zIsCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsCaptureProcessProgressAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to get " + str2 + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
    }

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name and from getter */
    public String getCamera() {
        return this.camera;
    }

    public int getCameraExtension() {
        return this.cameraExtension;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(C0200x84bbdc9b.m64m()))) {
            return (T) this.extensionCharacteristics;
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public boolean isPostviewSupported() {
        return this._isPostviewSupported.getValue().booleanValue();
    }
}
