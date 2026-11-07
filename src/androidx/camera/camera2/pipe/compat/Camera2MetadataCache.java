package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.impl.DisplayInfoManager$$ExternalSyntheticBUOutline0;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B3\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0018\u0010)\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u000eH\u0096@¢\u0006\u0004\b'\u0010(J\u0017\u0010,\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010+J\u001f\u00100\u001a\u00020-2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b.\u0010/J\u001d\u00104\u001a\b\u0012\u0004\u0012\u00020\u0016012\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b2\u00103R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00105R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00106R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00107R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u00108R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u00109R \u0010<\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020&0:8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b<\u0010=R \u0010>\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020-0:8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b>\u0010=R \u0010?\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u001c0:8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b?\u0010=¨\u0006@"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "Landroid/content/Context;", "cameraPipeContext", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/core/Permissions;", "permissions", "Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;", "cameraMetadataConfig", "Landroidx/camera/camera2/pipe/core/TimeSource;", "timeSource", "<init>", "(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;Landroidx/camera/camera2/pipe/core/TimeSource;)V", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "redacted", "Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;", "createCameraMetadata-0r8Bogc", "(Ljava/lang/String;Z)Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;", "createCameraMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "extension", "Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;", "createCameraExtensionMetadata-RzXb1QE", "(Ljava/lang/String;ZI)Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;", "createCameraExtensionMetadata", "Landroid/hardware/camera2/CameraExtensionCharacteristics;", "getCameraExtensionCharacteristics-EfqyGwQ", "(Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;", "getCameraExtensionCharacteristics", "isMetadataRedacted", "()Z", "Landroid/hardware/camera2/CameraCharacteristics;", "characteristics", "shouldBlockSensorOrientationCache", "(Landroid/hardware/camera2/CameraCharacteristics;)Z", "Landroidx/camera/camera2/pipe/CameraMetadata;", "getCameraMetadata-0r8Bogc", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCameraMetadata", "awaitCameraMetadata-EfqyGwQ", "(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;", "awaitCameraMetadata", "Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "awaitCameraExtensionMetadata-0r8Bogc", "(Ljava/lang/String;I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;", "awaitCameraExtensionMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "getSupportedCameraExtensions-EfqyGwQ", "(Ljava/lang/String;)Ljava/util/Set;", "getSupportedCameraExtensions", "Landroid/content/Context;", "Landroidx/camera/camera2/pipe/core/Threads;", "Landroidx/camera/camera2/pipe/core/Permissions;", "Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;", "Landroidx/camera/camera2/pipe/core/TimeSource;", "Landroid/util/ArrayMap;", _UrlKt.FRAGMENT_ENCODE_SET, "cache", "Landroid/util/ArrayMap;", "extensionCache", "extensionCharacteristicsCache", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2MetadataCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2MetadataCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2MetadataCache\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 3 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n*L\n1#1,292:1\n48#2,2:293\n71#2,4:295\n50#2,3:299\n78#2,4:302\n48#2,2:306\n71#2,4:308\n50#2,3:312\n78#2,4:315\n48#2,2:320\n71#2,4:322\n50#2:326\n52#2:335\n78#2,4:336\n48#2,2:341\n71#2,4:343\n50#2:347\n52#2:356\n78#2,4:357\n70#3:319\n70#3:330\n74#3,2:332\n70#3:340\n70#3:351\n74#3,2:353\n50#4,2:327\n59#4:329\n60#4:334\n50#4,2:348\n59#4:350\n60#4:355\n50#4,2:361\n29#5:331\n29#5:352\n*S KotlinDebug\n*F\n+ 1 Camera2MetadataCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2MetadataCache\n*L\n100#1:293,2\n100#1:295,4\n100#1:299,3\n100#1:302,4\n120#1:306,2\n120#1:308,4\n120#1:312,3\n120#1:315,4\n152#1:320,2\n152#1:322,4\n152#1:326\n152#1:335\n152#1:336,4\n222#1:341,2\n222#1:343,4\n222#1:347\n222#1:356\n222#1:357,4\n150#1:319\n193#1:330\n199#1:332,2\n220#1:340\n238#1:351\n245#1:353,2\n154#1:327,2\n192#1:329\n192#1:334\n224#1:348,2\n237#1:350\n237#1:355\n268#1:361,2\n193#1:331\n238#1:352\n*E\n"})
public final class Camera2MetadataCache implements Camera2MetadataProvider {
    private final CameraPipe.CameraMetadataConfig cameraMetadataConfig;
    private final Context cameraPipeContext;
    private final Permissions permissions;
    private final Threads threads;
    private final TimeSource timeSource;
    private final ArrayMap<String, CameraMetadata> cache = new ArrayMap<>();
    private final ArrayMap<String, CameraExtensionMetadata> extensionCache = new ArrayMap<>();
    private final ArrayMap<String, CameraExtensionCharacteristics> extensionCharacteristicsCache = new ArrayMap<>();

    public Camera2MetadataCache(Context context, Threads threads, Permissions permissions, CameraPipe.CameraMetadataConfig cameraMetadataConfig, TimeSource timeSource) {
        this.cameraPipeContext = context;
        this.threads = threads;
        this.permissions = permissions;
        this.cameraMetadataConfig = cameraMetadataConfig;
        this.timeSource = timeSource;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc, reason: not valid java name */
    public Object mo1528getCameraMetadata0r8Bogc(String str, Continuation<? super CameraMetadata> continuation) {
        synchronized (this.cache) {
            CameraMetadata cameraMetadata = this.cache.get(str);
            if (cameraMetadata != null) {
                return cameraMetadata;
            }
            Unit unit = Unit.INSTANCE;
            return BuildersKt.withContext(this.threads.getBackgroundDispatcher(), new Camera2MetadataCache$getCameraMetadata$3(this, str, null), continuation);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ, reason: not valid java name */
    public CameraMetadata mo1527awaitCameraMetadataEfqyGwQ(String cameraId) {
        CameraMetadata cameraMetadataM1524createCameraMetadata0r8Bogc;
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1303toStringimpl(cameraId)) + "#awaitMetadata");
            synchronized (this.cache) {
                try {
                    cameraMetadataM1524createCameraMetadata0r8Bogc = (CameraMetadata) this.cache.get(cameraId);
                    if (cameraMetadataM1524createCameraMetadata0r8Bogc == null) {
                        if (isMetadataRedacted()) {
                            Unit unit = Unit.INSTANCE;
                            cameraMetadataM1524createCameraMetadata0r8Bogc = m1524createCameraMetadata0r8Bogc(cameraId, true);
                        } else {
                            cameraMetadataM1524createCameraMetadata0r8Bogc = m1524createCameraMetadata0r8Bogc(cameraId, false);
                            this.cache.put(cameraId, cameraMetadataM1524createCameraMetadata0r8Bogc);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return cameraMetadataM1524createCameraMetadata0r8Bogc;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraExtensionMetadata-0r8Bogc, reason: not valid java name */
    public CameraExtensionMetadata mo1526awaitCameraExtensionMetadata0r8Bogc(String cameraId, int extension) throws Exception {
        CameraExtensionMetadata cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE;
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            throw new Exception("Extension sessions are only supported on Android S or higher. Device SDK is " + i);
        }
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1303toStringimpl(cameraId)) + "#awaitExtensionMetadata");
            synchronized (this.extensionCache) {
                try {
                    cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE = (CameraExtensionMetadata) this.extensionCache.get(cameraId);
                    if (cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE == null) {
                        if (isMetadataRedacted()) {
                            Unit unit = Unit.INSTANCE;
                            cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE = m1523createCameraExtensionMetadataRzXb1QE(cameraId, true, extension);
                        } else {
                            cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE = m1523createCameraExtensionMetadataRzXb1QE(cameraId, false, extension);
                            this.extensionCache.put(cameraId, cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return cameraExtensionMetadataM1523createCameraExtensionMetadataRzXb1QE;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getSupportedCameraExtensions-EfqyGwQ, reason: not valid java name */
    public Set<Integer> mo1529getSupportedCameraExtensionsEfqyGwQ(String cameraId) {
        if (Build.VERSION.SDK_INT >= 31) {
            return CollectionsKt.toSet(Api31Compat.getSupportedExtensions(m1525getCameraExtensionCharacteristicsEfqyGwQ(cameraId)));
        }
        return SetsKt.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCameraMetadata-0r8Bogc, reason: not valid java name */
    public final Camera2CameraMetadata m1524createCameraMetadata0r8Bogc(String cameraId, boolean redacted) {
        Set<CameraCharacteristics.Key<?>> setPlus;
        String str;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1575nowvQl9yQU = this.timeSource.mo1575nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1303toStringimpl(cameraId)) + "#readCameraMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Loading metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)));
                }
                CameraCharacteristics cameraCharacteristics = ((CameraManager) this.cameraPipeContext.getSystemService("camera")).getCameraCharacteristics(cameraId);
                if (cameraCharacteristics != null) {
                    if (shouldBlockSensorOrientationCache(cameraCharacteristics)) {
                        Set<CameraCharacteristics.Key<?>> setEmptySet = this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m1298boximpl(cameraId));
                        if (setEmptySet == null) {
                            setEmptySet = SetsKt.emptySet();
                        }
                        setPlus = SetsKt.plus(setEmptySet, CameraCharacteristics.SENSOR_ORIENTATION);
                    } else {
                        setPlus = this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m1298boximpl(cameraId));
                    }
                    Camera2CameraMetadata camera2CameraMetadata = new Camera2CameraMetadata(cameraId, redacted, cameraCharacteristics, this, MapsKt.emptyMap(), setPlus == null ? this.cameraMetadataConfig.getCacheBlocklist() : SetsKt.plus((Set) this.cameraMetadataConfig.getCacheBlocklist(), (Iterable) setPlus), null);
                    if (log.getINFO_LOGGABLE()) {
                        long jM1567constructorimpl = DurationNs.m1567constructorimpl(this.timeSource.mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                        if (!redacted) {
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            if (!redacted) {
                                throw new NoWhenBranchMatchedException();
                            }
                            str = " (redacted)";
                        }
                        android.util.Log.i("CXCP", "Loaded metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / 1000000.0d)}, 1)) + str);
                    }
                    return camera2CameraMetadata;
                }
                throw new IllegalStateException(("Failed to get CameraCharacteristics for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + '!').toString());
            } catch (Throwable th) {
                if (!CameraError.INSTANCE.shouldHandleDoNotDisturbException$camera_camera2_pipe(th)) {
                    throw new IllegalStateException("Failed to load metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + '!', th);
                }
                throw new DoNotDisturbException("Failed to load metadata: Do Not Disturb mode is on!");
            }
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCameraExtensionMetadata-RzXb1QE, reason: not valid java name */
    public final Camera2CameraExtensionMetadata m1523createCameraExtensionMetadataRzXb1QE(String cameraId, boolean redacted, int extension) {
        String str;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1575nowvQl9yQU = this.timeSource.mo1575nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1303toStringimpl(cameraId)) + "#readCameraExtensionMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Loading extension metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)));
                }
                Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = new Camera2CameraExtensionMetadata(cameraId, redacted, extension, m1525getCameraExtensionCharacteristicsEfqyGwQ(cameraId), MapsKt.emptyMap(), null);
                if (log.getINFO_LOGGABLE()) {
                    long jM1567constructorimpl = DurationNs.m1567constructorimpl(this.timeSource.mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                    if (!redacted) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    } else {
                        if (!redacted) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str = " (redacted)";
                    }
                    android.util.Log.i("CXCP", "Loaded extension metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + " in " + String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / 1000000.0d)}, 1)) + str);
                }
                return camera2CameraExtensionMetadata;
            } catch (Throwable th) {
                throw new IllegalStateException("Failed to load extension metadata for " + ((Object) CameraId.m1303toStringimpl(cameraId)) + '!', th);
            }
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getCameraExtensionCharacteristics-EfqyGwQ, reason: not valid java name */
    public final CameraExtensionCharacteristics m1525getCameraExtensionCharacteristicsEfqyGwQ(String cameraId) {
        synchronized (this.extensionCharacteristicsCache) {
            CameraExtensionCharacteristics cameraExtensionCharacteristicsM66m = Camera2MetadataCache$$ExternalSyntheticApiModelOutline0.m66m(this.extensionCharacteristicsCache.get(cameraId));
            if (cameraExtensionCharacteristicsM66m != null) {
                return cameraExtensionCharacteristicsM66m;
            }
            Unit unit = Unit.INSTANCE;
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Retrieving CameraExtensionCharacteristics for " + ((Object) CameraId.m1303toStringimpl(cameraId)));
            }
            CameraExtensionCharacteristics cameraExtensionCharacteristics = Api31Compat.getCameraExtensionCharacteristics((CameraManager) this.cameraPipeContext.getSystemService("camera"), cameraId);
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics;
            }
            DisplayInfoManager$$ExternalSyntheticBUOutline0.m30m("Failed to get CameraExtensionCharacteristics for ", CameraId.m1303toStringimpl(cameraId));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMetadataRedacted() {
        return !this.permissions.getHasCameraPermission();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldBlockSensorOrientationCache(CameraCharacteristics characteristics) {
        return Build.VERSION.SDK_INT >= 32 && characteristics.get(CameraCharacteristics.INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP) != null;
    }
}
