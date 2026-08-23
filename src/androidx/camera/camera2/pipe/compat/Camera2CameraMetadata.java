package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraMetadata implements CameraMetadata {
    private final Lazy _keys;
    private final Lazy _physicalCameraIds;
    private final Lazy _physicalRequestKeys;
    private final Lazy _requestKeys;
    private final Lazy _resultKeys;
    private final Lazy _sessionCharacteristicsKeys;
    private final Lazy _sessionKeys;
    private final Lazy _supportedExtensions;
    private final Set cacheBlocklist;
    private final String camera;
    private final CameraCharacteristics characteristics;
    private final ArrayMap extensionCache;
    private final boolean isRedacted;
    private final Map metadata;
    private final Camera2MetadataProvider metadataProvider;
    private final ArrayMap values;

    public /* synthetic */ Camera2CameraMetadata(String str, boolean z, CameraCharacteristics cameraCharacteristics, Camera2MetadataProvider camera2MetadataProvider, Map map, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, cameraCharacteristics, camera2MetadataProvider, map, set);
    }

    private Camera2CameraMetadata(String camera, boolean z, CameraCharacteristics characteristics, Camera2MetadataProvider metadataProvider, Map metadata, Set cacheBlocklist) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(characteristics, "characteristics");
        Intrinsics.checkNotNullParameter(metadataProvider, "metadataProvider");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(cacheBlocklist, "cacheBlocklist");
        this.camera = camera;
        this.isRedacted = z;
        this.characteristics = characteristics;
        this.metadataProvider = metadataProvider;
        this.metadata = metadata;
        this.cacheBlocklist = cacheBlocklist;
        this.values = new ArrayMap();
        this.extensionCache = new ArrayMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this._supportedExtensions = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._supportedExtensions$lambda$0(this.f$0);
            }
        });
        this._keys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._keys$lambda$0(this.f$0);
            }
        });
        this._requestKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._requestKeys$lambda$0(this.f$0);
            }
        });
        this._resultKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._resultKeys$lambda$0(this.f$0);
            }
        });
        this._physicalCameraIds = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._physicalCameraIds$lambda$0(this.f$0);
            }
        });
        this._physicalRequestKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._physicalRequestKeys$lambda$0(this.f$0);
            }
        });
        this._sessionCharacteristicsKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._sessionCharacteristicsKeys$lambda$0(this.f$0);
            }
        });
        this._sessionKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata._sessionKeys$lambda$0(this.f$0);
            }
        });
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo1612getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Object get(CameraCharacteristics.Key key) {
        Object obj;
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.cacheBlocklist.contains(key)) {
            return getOrThrow(this.characteristics, key);
        }
        synchronized (this.values) {
            obj = this.values.get(key);
        }
        if (obj != null) {
            return obj;
        }
        Object orThrow = getOrThrow(this.characteristics, key);
        if (orThrow == null) {
            return orThrow;
        }
        synchronized (this.values) {
            this.values.put(key, orThrow);
            Unit unit = Unit.INSTANCE;
        }
        return orThrow;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Object getOrDefault(CameraCharacteristics.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj2 = get(key);
        return obj2 == null ? obj : obj2;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCharacteristics.class))) {
            return null;
        }
        CameraCharacteristics cameraCharacteristics = this.characteristics;
        Intrinsics.checkNotNull(cameraCharacteristics, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.Camera2CameraMetadata.unwrapAs");
        return cameraCharacteristics;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set getSessionKeys() {
        return (Set) this._sessionKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set getPhysicalCameraIds() {
        return (Set) this._physicalCameraIds.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set getSupportedExtensions() {
        return (Set) this._supportedExtensions.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ */
    public CameraMetadata mo1611awaitPhysicalMetadataEfqyGwQ(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (!getPhysicalCameraIds().contains(CameraId.m1602boximpl(cameraId))) {
            throw new IllegalStateException((((Object) CameraId.m1607toStringimpl(cameraId)) + " is not a valid physical camera on " + this).toString());
        }
        return this.metadataProvider.mo1841awaitCameraMetadataEfqyGwQ(cameraId);
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public CameraExtensionMetadata awaitExtensionMetadata(int i) {
        CameraExtensionMetadata cameraExtensionMetadata;
        synchronized (this.extensionCache) {
            cameraExtensionMetadata = (CameraExtensionMetadata) this.extensionCache.get(Integer.valueOf(i));
        }
        if (cameraExtensionMetadata != null) {
            return cameraExtensionMetadata;
        }
        CameraExtensionMetadata cameraExtensionMetadataMo1840awaitCameraExtensionMetadata0r8Bogc = this.metadataProvider.mo1840awaitCameraExtensionMetadata0r8Bogc(mo1612getCameraDz_R5H8(), i);
        synchronized (this.extensionCache) {
            this.extensionCache.put(Integer.valueOf(i), cameraExtensionMetadataMo1840awaitCameraExtensionMetadata0r8Bogc);
            Unit unit = Unit.INSTANCE;
        }
        return cameraExtensionMetadataMo1840awaitCameraExtensionMetadata0r8Bogc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _supportedExtensions$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + "#supportedExtensions");
                return camera2CameraMetadata.metadataProvider.mo1843getSupportedCameraExtensionsEfqyGwQ(camera2CameraMetadata.mo1612getCameraDz_R5H8());
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _keys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + "#keys");
                List<CameraCharacteristics.Key<?>> keys = camera2CameraMetadata.characteristics.getKeys();
                if (keys == null) {
                    keys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(keys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + '}', e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _requestKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + "#availableCaptureRequestKeys");
                List<CaptureRequest.Key<?>> availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                if (availableCaptureRequestKeys == null) {
                    availableCaptureRequestKeys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(availableCaptureRequestKeys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _resultKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + "#availableCaptureResultKeys");
                List<CaptureResult.Key<?>> availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                if (availableCaptureResultKeys == null) {
                    availableCaptureResultKeys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(availableCaptureResultKeys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalCameraIds$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + "#physicalCameraIds");
                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())) + ": " + physicalCameraIds);
                }
                if (physicalCameraIds == null) {
                    physicalCameraIds = SetsKt.emptySet();
                }
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(physicalCameraIds, 10));
                Iterator it = physicalCameraIds.iterator();
                while (it.hasNext()) {
                    arrayList.add(CameraId.m1602boximpl(CameraId.m1603constructorimpl((String) it.next())));
                }
                Set set = CollectionsKt.toSet(arrayList);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())), e);
            }
            return SetsKt.emptySet();
        } catch (NullPointerException e2) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m1607toStringimpl(camera2CameraMetadata.mo1612getCameraDz_R5H8())), e2);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalRequestKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8() + "#availablePhysicalCameraRequestKeys");
                List availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                if (availablePhysicalCameraRequestKeys == null) {
                    availablePhysicalCameraRequestKeys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(availablePhysicalCameraRequestKeys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8(), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _sessionCharacteristicsKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 35) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8() + "#getAvailableSessionCharacteristicsKeys");
                List availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                if (availableSessionCharacteristicsKeys == null) {
                    availableSessionCharacteristicsKeys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(availableSessionCharacteristicsKeys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8(), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _sessionKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8() + "#availableSessionKeys");
                List availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                if (availableSessionKeys == null) {
                    availableSessionKeys = CollectionsKt.emptyList();
                }
                Set set = CollectionsKt.toSet(availableSessionKeys);
                Trace.endSection();
                return set;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + camera2CameraMetadata.mo1612getCameraDz_R5H8(), e);
            }
            return SetsKt.emptySet();
        }
    }

    private final Object getOrThrow(CameraCharacteristics cameraCharacteristics, CameraCharacteristics.Key key) {
        try {
            return cameraCharacteristics.get(key);
        } catch (AssertionError unused) {
            throw new IllegalStateException("Failed to get characteristic for " + key + ": Framework throw an AssertionError");
        }
    }
}
