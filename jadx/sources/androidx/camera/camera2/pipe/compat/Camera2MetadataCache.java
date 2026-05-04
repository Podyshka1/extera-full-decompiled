package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
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
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2MetadataCache implements Camera2MetadataProvider {
    private final ArrayMap cache;
    private final CameraPipe.CameraMetadataConfig cameraMetadataConfig;
    private final Context cameraPipeContext;
    private final ArrayMap extensionCache;
    private final ArrayMap extensionCharacteristicsCache;
    private final Permissions permissions;
    private final Threads threads;
    private final TimeSource timeSource;

    public Camera2MetadataCache(Context cameraPipeContext, Threads threads, Permissions permissions, CameraPipe.CameraMetadataConfig cameraMetadataConfig, TimeSource timeSource) {
        Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(cameraMetadataConfig, "cameraMetadataConfig");
        Intrinsics.checkNotNullParameter(timeSource, "timeSource");
        this.cameraPipeContext = cameraPipeContext;
        this.threads = threads;
        this.permissions = permissions;
        this.cameraMetadataConfig = cameraMetadataConfig;
        this.timeSource = timeSource;
        this.cache = new ArrayMap();
        this.extensionCache = new ArrayMap();
        this.extensionCharacteristicsCache = new ArrayMap();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc, reason: not valid java name */
    public Object mo1842getCameraMetadata0r8Bogc(String str, Continuation continuation) {
        synchronized (this.cache) {
            CameraMetadata cameraMetadata = (CameraMetadata) this.cache.get(str);
            if (cameraMetadata != null) {
                return cameraMetadata;
            }
            Unit unit = Unit.INSTANCE;
            return BuildersKt.withContext(this.threads.getBackgroundDispatcher(), new Camera2MetadataCache$getCameraMetadata$3(this, str, null), continuation);
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ, reason: not valid java name */
    public CameraMetadata mo1841awaitCameraMetadataEfqyGwQ(String cameraId) {
        CameraMetadata cameraMetadataM1838createCameraMetadata0r8Bogc;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1607toStringimpl(cameraId)) + "#awaitMetadata");
            synchronized (this.cache) {
                try {
                    cameraMetadataM1838createCameraMetadata0r8Bogc = (CameraMetadata) this.cache.get(cameraId);
                    if (cameraMetadataM1838createCameraMetadata0r8Bogc == null) {
                        if (isMetadataRedacted()) {
                            Unit unit = Unit.INSTANCE;
                            cameraMetadataM1838createCameraMetadata0r8Bogc = m1838createCameraMetadata0r8Bogc(cameraId, true);
                        } else {
                            cameraMetadataM1838createCameraMetadata0r8Bogc = m1838createCameraMetadata0r8Bogc(cameraId, false);
                            this.cache.put(cameraId, cameraMetadataM1838createCameraMetadata0r8Bogc);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return cameraMetadataM1838createCameraMetadata0r8Bogc;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: awaitCameraExtensionMetadata-0r8Bogc, reason: not valid java name */
    public CameraExtensionMetadata mo1840awaitCameraExtensionMetadata0r8Bogc(String cameraId, int i) throws Exception {
        CameraExtensionMetadata cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE;
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31) {
            throw new Exception("Extension sessions are only supported on Android S or higher. Device SDK is " + i2);
        }
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1607toStringimpl(cameraId)) + "#awaitExtensionMetadata");
            synchronized (this.extensionCache) {
                try {
                    cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE = (CameraExtensionMetadata) this.extensionCache.get(cameraId);
                    if (cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE == null) {
                        if (isMetadataRedacted()) {
                            Unit unit = Unit.INSTANCE;
                            cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE = m1837createCameraExtensionMetadataRzXb1QE(cameraId, true, i);
                        } else {
                            cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE = m1837createCameraExtensionMetadataRzXb1QE(cameraId, false, i);
                            this.extensionCache.put(cameraId, cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return cameraExtensionMetadataM1837createCameraExtensionMetadataRzXb1QE;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2MetadataProvider
    /* JADX INFO: renamed from: getSupportedCameraExtensions-EfqyGwQ, reason: not valid java name */
    public Set mo1843getSupportedCameraExtensionsEfqyGwQ(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (Build.VERSION.SDK_INT >= 31) {
            return CollectionsKt.toSet(Api31Compat.getSupportedExtensions(m1839getCameraExtensionCharacteristicsEfqyGwQ(cameraId)));
        }
        return SetsKt.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createCameraMetadata-0r8Bogc, reason: not valid java name */
    public final Camera2CameraMetadata m1838createCameraMetadata0r8Bogc(String str, boolean z) {
        Set setPlus;
        String str2;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1607toStringimpl(str)) + "#readCameraMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Loading metadata for " + ((Object) CameraId.m1607toStringimpl(str)));
                }
                Object systemService = this.cameraPipeContext.getSystemService("camera");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
                CameraCharacteristics cameraCharacteristics = ((CameraManager) systemService).getCameraCharacteristics(str);
                Intrinsics.checkNotNullExpressionValue(cameraCharacteristics, "getCameraCharacteristics(...)");
                if (cameraCharacteristics != null) {
                    if (shouldBlockSensorOrientationCache(cameraCharacteristics)) {
                        Set setEmptySet = (Set) this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m1602boximpl(str));
                        if (setEmptySet == null) {
                            setEmptySet = SetsKt.emptySet();
                        }
                        setPlus = SetsKt.plus(setEmptySet, CameraCharacteristics.SENSOR_ORIENTATION);
                    } else {
                        setPlus = (Set) this.cameraMetadataConfig.getCameraCacheBlocklist().get(CameraId.m1602boximpl(str));
                    }
                    Camera2CameraMetadata camera2CameraMetadata = new Camera2CameraMetadata(str, z, cameraCharacteristics, this, MapsKt.emptyMap(), setPlus == null ? this.cameraMetadataConfig.getCacheBlocklist() : SetsKt.plus(this.cameraMetadataConfig.getCacheBlocklist(), (Iterable) setPlus), null);
                    if (log.getINFO_LOGGABLE()) {
                        long jM1880constructorimpl = DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        if (!z) {
                            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                        } else {
                            if (!z) {
                                throw new NoWhenBranchMatchedException();
                            }
                            str2 = " (redacted)";
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Loaded metadata for ");
                        sb.append((Object) CameraId.m1607toStringimpl(str));
                        sb.append(" in ");
                        String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                        sb.append(str3);
                        sb.append(str2);
                        android.util.Log.i("CXCP", sb.toString());
                    }
                    Trace.endSection();
                    return camera2CameraMetadata;
                }
                throw new IllegalStateException(("Failed to get CameraCharacteristics for " + ((Object) CameraId.m1607toStringimpl(str)) + '!').toString());
            } catch (Throwable th) {
                if (CameraError.Companion.shouldHandleDoNotDisturbException$camera_camera2_pipe(th)) {
                    throw new DoNotDisturbException("Failed to load metadata: Do Not Disturb mode is on!");
                }
                throw new IllegalStateException("Failed to load metadata for " + ((Object) CameraId.m1607toStringimpl(str)) + '!', th);
            }
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[Catch: all -> 0x0074, TryCatch #2 {all -> 0x0074, blocks: (B:13:0x0058, B:15:0x0061, B:22:0x007b, B:24:0x00b8, B:27:0x00d8, B:28:0x00dd), top: B:42:0x0058 }] */
    /* JADX INFO: renamed from: createCameraExtensionMetadata-RzXb1QE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Camera2CameraExtensionMetadata m1837createCameraExtensionMetadataRzXb1QE(String str, boolean z, int i) {
        String str2;
        Throwable th;
        String str3;
        Timestamps timestamps = Timestamps.INSTANCE;
        long jMo1888nowvQl9yQU = this.timeSource.mo1888nowvQl9yQU();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1607toStringimpl(str)) + "#readCameraExtensionMetadata");
            try {
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    try {
                        android.util.Log.d("CXCP", "Loading extension metadata for " + ((Object) CameraId.m1607toStringimpl(str)));
                        str2 = str;
                        try {
                            Camera2CameraExtensionMetadata camera2CameraExtensionMetadata = new Camera2CameraExtensionMetadata(str2, z, i, m1839getCameraExtensionCharacteristicsEfqyGwQ(str), MapsKt.emptyMap(), null);
                            if (log.getINFO_LOGGABLE()) {
                                long jM1880constructorimpl = DurationNs.m1880constructorimpl(this.timeSource.mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                                if (!z) {
                                    str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                                } else {
                                    if (!z) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    str3 = " (redacted)";
                                }
                                StringBuilder sb = new StringBuilder();
                                sb.append("Loaded extension metadata for ");
                                sb.append((Object) CameraId.m1607toStringimpl(str2));
                                sb.append(" in ");
                                try {
                                    String str4 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                                    Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                                    sb.append(str4);
                                    sb.append(str3);
                                    android.util.Log.i("CXCP", sb.toString());
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            return camera2CameraExtensionMetadata;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        str2 = str;
                    }
                } else {
                    str2 = str;
                    Camera2CameraExtensionMetadata camera2CameraExtensionMetadata2 = new Camera2CameraExtensionMetadata(str2, z, i, m1839getCameraExtensionCharacteristicsEfqyGwQ(str), MapsKt.emptyMap(), null);
                    if (log.getINFO_LOGGABLE()) {
                    }
                    return camera2CameraExtensionMetadata2;
                }
            } catch (Throwable th5) {
                th = th5;
                str2 = str;
            }
            throw new IllegalStateException("Failed to load extension metadata for " + ((Object) CameraId.m1607toStringimpl(str2)) + '!', th);
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getCameraExtensionCharacteristics-EfqyGwQ, reason: not valid java name */
    public final CameraExtensionCharacteristics m1839getCameraExtensionCharacteristicsEfqyGwQ(String str) throws CameraAccessException {
        synchronized (this.extensionCharacteristicsCache) {
            CameraExtensionCharacteristics cameraExtensionCharacteristicsM68m = Camera2MetadataCache$$ExternalSyntheticApiModelOutline0.m68m(this.extensionCharacteristicsCache.get(str));
            if (cameraExtensionCharacteristicsM68m != null) {
                return cameraExtensionCharacteristicsM68m;
            }
            Unit unit = Unit.INSTANCE;
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Retrieving CameraExtensionCharacteristics for " + ((Object) CameraId.m1607toStringimpl(str)));
            }
            Object systemService = this.cameraPipeContext.getSystemService("camera");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
            CameraExtensionCharacteristics cameraExtensionCharacteristics = Api31Compat.getCameraExtensionCharacteristics((CameraManager) systemService, str);
            if (cameraExtensionCharacteristics != null) {
                return cameraExtensionCharacteristics;
            }
            throw new IllegalStateException(("Failed to get CameraExtensionCharacteristics for " + ((Object) CameraId.m1607toStringimpl(str)) + '!').toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMetadataRedacted() {
        return !this.permissions.getHasCameraPermission();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldBlockSensorOrientationCache(CameraCharacteristics cameraCharacteristics) {
        return Build.VERSION.SDK_INT >= 32 && cameraCharacteristics.get(CameraCharacteristics.INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP) != null;
    }
}
