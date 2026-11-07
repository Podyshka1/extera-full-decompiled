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
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.view.LiveData$$ExternalSyntheticBUOutline0;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
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
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0018\u0010\r\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n\u0012\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000e¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0013*\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J&\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J+\u0010\u001a\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0019\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001e\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0013*\u00020\f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010#\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b'\u0010(R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010)\u001a\u0004\b*\u0010+R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010,\u001a\u0004\b\u0005\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010.R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010/R&\u0010\r\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00100R\u001e\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00101R&\u00103\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f\u0012\u0006\u0012\u0004\u0018\u00010\f028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b3\u00104R \u00105\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020&028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b5\u00104R \u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R$\u00109\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00108R$\u0010;\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030:0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00108R$\u0010=\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030<0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u00108R \u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00108R$\u0010?\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030:0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u00108R$\u0010@\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u00108R$\u0010A\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030:0\u000e068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u00108R\u001e\u0010D\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030:0\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bB\u0010CR\u001a\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010CR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020$0\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010C¨\u0006I"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroidx/camera/camera2/pipe/CameraId;", "camera", _UrlKt.FRAGMENT_ENCODE_SET, "isRedacted", "Landroid/hardware/camera2/CameraCharacteristics;", "characteristics", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "metadataProvider", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Metadata$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "metadata", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CameraCharacteristics$Key;", "cacheBlocklist", "<init>", "(Ljava/lang/String;ZLandroid/hardware/camera2/CameraCharacteristics;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Ljava/util/Map;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "T", PluginsConstants.Settings.KEY, "getOrThrow", "(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;", "get", "(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;", PluginsConstants.Settings.DEFAULT, "getOrDefault", "(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "cameraId", "awaitPhysicalMetadata-EfqyGwQ", "(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitPhysicalMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "extension", "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "awaitExtensionMetadata", "(I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "Ljava/lang/String;", "getCamera-Dz_R5H8", "()Ljava/lang/String;", "Z", "()Z", "Landroid/hardware/camera2/CameraCharacteristics;", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "Ljava/util/Map;", "Ljava/util/Set;", "Landroid/util/ArrayMap;", "values", "Landroid/util/ArrayMap;", "extensionCache", "Lkotlin/Lazy;", "_supportedExtensions", "Lkotlin/Lazy;", "_keys", "Landroid/hardware/camera2/CaptureRequest$Key;", "_requestKeys", "Landroid/hardware/camera2/CaptureResult$Key;", "_resultKeys", "_physicalCameraIds", "_physicalRequestKeys", "_sessionCharacteristicsKeys", "_sessionKeys", "getSessionKeys", "()Ljava/util/Set;", "sessionKeys", "getPhysicalCameraIds", "physicalCameraIds", "getSupportedExtensions", "supportedExtensions", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CameraMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraMetadata.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraMetadata\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,297:1\n1#2:298\n48#3,2:299\n71#3,4:301\n50#3,3:305\n78#3,4:308\n48#3,2:314\n71#3,4:316\n50#3,3:320\n78#3,4:323\n48#3,2:329\n71#3,4:331\n50#3,3:335\n78#3,4:338\n48#3,2:344\n71#3,4:346\n50#3,3:350\n78#3,4:353\n48#3,2:359\n71#3,4:361\n50#3:365\n52#3:372\n78#3,4:373\n48#3,2:381\n71#3,4:383\n50#3,3:387\n78#3,4:390\n48#3,2:396\n71#3,4:398\n50#3,3:402\n78#3,4:405\n48#3,2:411\n71#3,4:413\n50#3,3:417\n78#3,4:420\n75#4,2:312\n75#4,2:327\n75#4,2:342\n75#4,2:357\n59#4,2:366\n75#4,2:377\n75#4,2:379\n75#4,2:394\n75#4,2:409\n75#4,2:424\n1563#5:368\n1634#5,3:369\n*S KotlinDebug\n*F\n+ 1 Camera2CameraMetadata.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraMetadata\n*L\n160#1:299,2\n160#1:301,4\n160#1:305,3\n160#1:308,4\n172#1:314,2\n172#1:316,4\n172#1:320,3\n172#1:323,4\n185#1:329,2\n185#1:331,4\n185#1:335,3\n185#1:338,4\n198#1:344,2\n198#1:346,4\n198#1:350,3\n198#1:353,4\n214#1:359,2\n214#1:361,4\n214#1:365\n214#1:372\n214#1:373,4\n236#1:381,2\n236#1:383,4\n236#1:387,3\n236#1:390,4\n257#1:396,2\n257#1:398,4\n257#1:402,3\n257#1:405,4\n277#1:411,2\n277#1:413,4\n277#1:417,3\n277#1:420,4\n164#1:312,2\n177#1:327,2\n190#1:342,2\n203#1:357,2\n216#1:366,2\n221#1:377,2\n224#1:379,2\n242#1:394,2\n263#1:409,2\n281#1:424,2\n218#1:368\n218#1:369,3\n*E\n"})
public final class Camera2CameraMetadata implements CameraMetadata {
    private final Lazy<Set<CameraCharacteristics.Key<?>>> _keys;
    private final Lazy<Set<CameraId>> _physicalCameraIds;
    private final Lazy<Set<CaptureRequest.Key<?>>> _physicalRequestKeys;
    private final Lazy<Set<CaptureRequest.Key<?>>> _requestKeys;
    private final Lazy<Set<CaptureResult.Key<?>>> _resultKeys;
    private final Lazy<Set<CameraCharacteristics.Key<?>>> _sessionCharacteristicsKeys;
    private final Lazy<Set<CaptureRequest.Key<?>>> _sessionKeys;
    private final Lazy<Set<Integer>> _supportedExtensions;
    private final Set<CameraCharacteristics.Key<?>> cacheBlocklist;
    private final String camera;
    private final CameraCharacteristics characteristics;
    private final ArrayMap<Integer, CameraExtensionMetadata> extensionCache;
    private final boolean isRedacted;
    private final Map<Metadata.Key<?>, Object> metadata;
    private final Camera2MetadataProvider metadataProvider;
    private final ArrayMap<CameraCharacteristics.Key<?>, Object> values;

    public /* synthetic */ Camera2CameraMetadata(String str, boolean z, CameraCharacteristics cameraCharacteristics, Camera2MetadataProvider camera2MetadataProvider, Map map, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, cameraCharacteristics, camera2MetadataProvider, map, set);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CameraMetadata(String str, boolean z, CameraCharacteristics cameraCharacteristics, Camera2MetadataProvider camera2MetadataProvider, Map<Metadata.Key<?>, ? extends Object> map, Set<? extends CameraCharacteristics.Key<?>> set) {
        this.camera = str;
        this.isRedacted = z;
        this.characteristics = cameraCharacteristics;
        this.metadataProvider = camera2MetadataProvider;
        this.metadata = map;
        this.cacheBlocklist = set;
        this.values = new ArrayMap<>();
        this.extensionCache = new ArrayMap<>();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this._supportedExtensions = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.$r8$lambda$6jK87doF68L06RJW28qItaCN2Cc(this.f$0);
            }
        });
        this._keys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.m1558$r8$lambda$oNGg3oBRHSEZOlQaEMZFDTnMGA(this.f$0);
            }
        });
        this._requestKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.$r8$lambda$bVgw3guBRT4qUjSeoBqmXlH3OyE(this.f$0);
            }
        });
        this._resultKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.$r8$lambda$BODuUBBZ02eZsHvr6gg9PgV4V2A(this.f$0);
            }
        });
        this._physicalCameraIds = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.m1556$r8$lambda$fbQ7MpcKFG8fJ8N6r2fzmopaIg(this.f$0);
            }
        });
        this._physicalRequestKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.$r8$lambda$7QGiosAsnjzt4Vh5sZvU8ramzyE(this.f$0);
            }
        });
        this._sessionCharacteristicsKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.m1557$r8$lambda$kMchj1M_zhNcriAQkASoDiOYyk(this.f$0);
            }
        });
        this._sessionKeys = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Camera2CameraMetadata.m1559$r8$lambda$zS47a6lsd54WlPjLo8dMKY4McE(this.f$0);
            }
        });
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: from getter */
    public String getCamera() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public <T> T get(CameraCharacteristics.Key<T> key) {
        T t;
        if (this.cacheBlocklist.contains(key)) {
            return (T) getOrThrow(this.characteristics, key);
        }
        synchronized (this.values) {
            t = (T) this.values.get(key);
        }
        if (t != null) {
            return t;
        }
        T t2 = (T) getOrThrow(this.characteristics, key);
        if (t2 == null) {
            return t2;
        }
        synchronized (this.values) {
            this.values.put((CameraCharacteristics.Key<?>) key, t2);
            Unit unit = Unit.INSTANCE;
        }
        return t2;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t) {
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraCharacteristics.class))) {
            return (T) this.characteristics;
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CaptureRequest.Key<?>> getSessionKeys() {
        return this._sessionKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CameraId> getPhysicalCameraIds() {
        return this._physicalCameraIds.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<Integer> getSupportedExtensions() {
        return this._supportedExtensions.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ */
    public CameraMetadata mo1360awaitPhysicalMetadataEfqyGwQ(String cameraId) {
        if (!getPhysicalCameraIds().contains(CameraId.m1351boximpl(cameraId))) {
            throw new IllegalStateException((((Object) CameraId.m1356toStringimpl(cameraId)) + " is not a valid physical camera on " + this).toString());
        }
        return this.metadataProvider.mo1580awaitCameraMetadataEfqyGwQ(cameraId);
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public CameraExtensionMetadata awaitExtensionMetadata(int extension) {
        CameraExtensionMetadata cameraExtensionMetadata;
        synchronized (this.extensionCache) {
            cameraExtensionMetadata = this.extensionCache.get(Integer.valueOf(extension));
        }
        if (cameraExtensionMetadata != null) {
            return cameraExtensionMetadata;
        }
        CameraExtensionMetadata cameraExtensionMetadataMo1579awaitCameraExtensionMetadata0r8Bogc = this.metadataProvider.mo1579awaitCameraExtensionMetadata0r8Bogc(getCamera(), extension);
        synchronized (this.extensionCache) {
            this.extensionCache.put(Integer.valueOf(extension), cameraExtensionMetadataMo1579awaitCameraExtensionMetadata0r8Bogc);
            Unit unit = Unit.INSTANCE;
        }
        return cameraExtensionMetadataMo1579awaitCameraExtensionMetadata0r8Bogc;
    }

    public static Set $r8$lambda$6jK87doF68L06RJW28qItaCN2Cc(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + "#supportedExtensions");
                return camera2CameraMetadata.metadataProvider.mo1582getSupportedCameraExtensionsEfqyGwQ(camera2CameraMetadata.getCamera());
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$oNGg3oBR-HSEZOlQaEMZFDTnMGA, reason: not valid java name */
    public static Set m1558$r8$lambda$oNGg3oBRHSEZOlQaEMZFDTnMGA(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + "#keys");
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
                android.util.Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + '}', e);
            }
            return SetsKt.emptySet();
        }
    }

    public static Set $r8$lambda$bVgw3guBRT4qUjSeoBqmXlH3OyE(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + "#availableCaptureRequestKeys");
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
                android.util.Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())), e);
            }
            return SetsKt.emptySet();
        }
    }

    public static Set $r8$lambda$BODuUBBZ02eZsHvr6gg9PgV4V2A(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + "#availableCaptureResultKeys");
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
                android.util.Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$fbQ7MpcKFG8fJ8N6r-2fzmopaIg, reason: not valid java name */
    public static Set m1556$r8$lambda$fbQ7MpcKFG8fJ8N6r2fzmopaIg(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + "#physicalCameraIds");
                Set<String> physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())) + ": " + physicalCameraIds);
                }
                if (physicalCameraIds == null) {
                    physicalCameraIds = SetsKt.emptySet();
                }
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(physicalCameraIds, 10));
                Iterator<T> it = physicalCameraIds.iterator();
                while (it.hasNext()) {
                    arrayList.add(CameraId.m1351boximpl(CameraId.m1352constructorimpl((String) it.next())));
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
                android.util.Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())), e);
            }
            return SetsKt.emptySet();
        } catch (NullPointerException e2) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m1356toStringimpl(camera2CameraMetadata.getCamera())), e2);
            }
            return SetsKt.emptySet();
        }
    }

    public static Set $r8$lambda$7QGiosAsnjzt4Vh5sZvU8ramzyE(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.getCamera() + "#availablePhysicalCameraRequestKeys");
                List<CaptureRequest.Key<?>> availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
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
                android.util.Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + camera2CameraMetadata.getCamera(), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$kMchj1M_-zhNcriAQkASoDiOYyk, reason: not valid java name */
    public static Set m1557$r8$lambda$kMchj1M_zhNcriAQkASoDiOYyk(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 35) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.getCamera() + "#getAvailableSessionCharacteristicsKeys");
                List<CameraCharacteristics.Key<?>> availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
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
                android.util.Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + camera2CameraMetadata.getCamera(), e);
            }
            return SetsKt.emptySet();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$zS47a6lsd54WlPjLo8-dMKY4McE, reason: not valid java name */
    public static Set m1559$r8$lambda$zS47a6lsd54WlPjLo8dMKY4McE(Camera2CameraMetadata camera2CameraMetadata) {
        if (Build.VERSION.SDK_INT < 28) {
            return SetsKt.emptySet();
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.getCamera() + "#availableSessionKeys");
                List<CaptureRequest.Key<?>> availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
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
                android.util.Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + camera2CameraMetadata.getCamera(), e);
            }
            return SetsKt.emptySet();
        }
    }

    private final <T> T getOrThrow(CameraCharacteristics cameraCharacteristics, CameraCharacteristics.Key<T> key) {
        try {
            return (T) cameraCharacteristics.get(key);
        } catch (AssertionError unused) {
            LiveData$$ExternalSyntheticBUOutline0.m153m("Failed to get characteristic for ", key, ": Framework throw an AssertionError");
            return null;
        }
    }
}
