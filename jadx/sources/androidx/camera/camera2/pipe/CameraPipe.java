package androidx.camera.camera2.pipe;

import android.content.Context;
import android.hardware.camera2.CameraDevice;
import android.os.Handler;
import android.os.Trace;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.config.CameraPipeComponent;
import androidx.camera.camera2.pipe.config.CameraPipeConfigModule;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.media.ImageSources;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraPipe {
    public static final Companion Companion = Companion.$$INSTANCE;

    CameraSurfaceManager cameraSurfaceManager();

    CameraDevices cameras();

    CameraGraph createCameraGraph(CameraGraph.Config config);

    List createCameraGraphs(CameraGraph.ConcurrentConfig concurrentConfig);

    /* JADX INFO: renamed from: isConfigSupported-NpXggIU, reason: not valid java name */
    Object mo1613isConfigSupportedNpXggIU(CameraGraph.Config config, Continuation continuation);

    void shutdown();

    public static final class Config {
        private final Context appContext;
        private final CameraBackendConfig cameraBackendConfig;
        private final CameraInteropConfig cameraInteropConfig;
        private final CameraMetadataConfig cameraMetadataConfig;
        private final Flags flags;
        private final ImageSources imageSources;
        private final ThreadConfig threadConfig;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Config)) {
                return false;
            }
            Config config = (Config) obj;
            return Intrinsics.areEqual(this.appContext, config.appContext) && Intrinsics.areEqual(this.threadConfig, config.threadConfig) && Intrinsics.areEqual(this.cameraMetadataConfig, config.cameraMetadataConfig) && Intrinsics.areEqual(this.cameraBackendConfig, config.cameraBackendConfig) && Intrinsics.areEqual(this.cameraInteropConfig, config.cameraInteropConfig) && Intrinsics.areEqual(this.imageSources, config.imageSources) && Intrinsics.areEqual(this.flags, config.flags) && Intrinsics.areEqual(null, null);
        }

        public final PlatformApiCompat getPlatformApiCompat() {
            return null;
        }

        public int hashCode() {
            int iHashCode = ((((((((this.appContext.hashCode() * 31) + this.threadConfig.hashCode()) * 31) + this.cameraMetadataConfig.hashCode()) * 31) + this.cameraBackendConfig.hashCode()) * 31) + this.cameraInteropConfig.hashCode()) * 31;
            ImageSources imageSources = this.imageSources;
            return (((iHashCode + (imageSources == null ? 0 : imageSources.hashCode())) * 31) + this.flags.hashCode()) * 31;
        }

        public String toString() {
            return "Config(appContext=" + this.appContext + ", threadConfig=" + this.threadConfig + ", cameraMetadataConfig=" + this.cameraMetadataConfig + ", cameraBackendConfig=" + this.cameraBackendConfig + ", cameraInteropConfig=" + this.cameraInteropConfig + ", imageSources=" + this.imageSources + ", flags=" + this.flags + ", platformApiCompat=" + ((Object) null) + ')';
        }

        public Config(Context appContext, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat) {
            Intrinsics.checkNotNullParameter(appContext, "appContext");
            Intrinsics.checkNotNullParameter(threadConfig, "threadConfig");
            Intrinsics.checkNotNullParameter(cameraMetadataConfig, "cameraMetadataConfig");
            Intrinsics.checkNotNullParameter(cameraBackendConfig, "cameraBackendConfig");
            Intrinsics.checkNotNullParameter(cameraInteropConfig, "cameraInteropConfig");
            Intrinsics.checkNotNullParameter(flags, "flags");
            this.appContext = appContext;
            this.threadConfig = threadConfig;
            this.cameraMetadataConfig = cameraMetadataConfig;
            this.cameraBackendConfig = cameraBackendConfig;
            this.cameraInteropConfig = cameraInteropConfig;
            this.imageSources = imageSources;
            this.flags = flags;
        }

        public final Context getAppContext() {
            return this.appContext;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Config(Context context, ThreadConfig threadConfig, CameraMetadataConfig cameraMetadataConfig, CameraBackendConfig cameraBackendConfig, CameraInteropConfig cameraInteropConfig, ImageSources imageSources, Flags flags, PlatformApiCompat platformApiCompat, int i, DefaultConstructorMarker defaultConstructorMarker) {
            Flags flags2;
            threadConfig = (i & 2) != 0 ? new ThreadConfig(null, null, null, null, null, null, null, 127, null) : threadConfig;
            Object[] objArr = 0;
            cameraMetadataConfig = (i & 4) != 0 ? new CameraMetadataConfig(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0) : cameraMetadataConfig;
            CameraBackendConfig cameraBackendConfig2 = (i & 8) != 0 ? new CameraBackendConfig(null, null, null, 7, null) : cameraBackendConfig;
            CameraInteropConfig cameraInteropConfig2 = (i & 16) != 0 ? new CameraInteropConfig(null, null, null, 7, null) : cameraInteropConfig;
            ImageSources imageSources2 = (i & 32) != 0 ? null : imageSources;
            if ((i & 64) != 0) {
                flags2 = new Flags(false, 1, objArr == true ? 1 : 0);
            } else {
                flags2 = flags;
            }
            this(context, threadConfig, cameraMetadataConfig, cameraBackendConfig2, cameraInteropConfig2, imageSources2, flags2, (i & 128) != 0 ? null : platformApiCompat);
        }

        public final ThreadConfig getThreadConfig() {
            return this.threadConfig;
        }

        public final CameraMetadataConfig getCameraMetadataConfig() {
            return this.cameraMetadataConfig;
        }

        public final CameraBackendConfig getCameraBackendConfig() {
            return this.cameraBackendConfig;
        }

        public final CameraInteropConfig getCameraInteropConfig() {
            return this.cameraInteropConfig;
        }

        public final ImageSources getImageSources() {
            return this.imageSources;
        }

        public final Flags getFlags() {
            return this.flags;
        }
    }

    public static final class Flags {
        private final boolean strictModeEnabled;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Flags) && this.strictModeEnabled == ((Flags) obj).strictModeEnabled;
        }

        public int hashCode() {
            return EvCompValue$$ExternalSyntheticBackport0.m10m(this.strictModeEnabled);
        }

        public String toString() {
            return "Flags(strictModeEnabled=" + this.strictModeEnabled + ')';
        }

        public Flags(boolean z) {
            this.strictModeEnabled = z;
        }

        public /* synthetic */ Flags(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z);
        }

        public final boolean getStrictModeEnabled() {
            return this.strictModeEnabled;
        }
    }

    public static final class CameraInteropConfig {
        private final CameraInterop.CaptureSessionListener cameraCaptureSessionListener;
        private final CameraDevice.StateCallback cameraDeviceStateCallback;
        private final DurationNs cameraOpenRetryMaxTimeoutNs;

        public /* synthetic */ CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs, DefaultConstructorMarker defaultConstructorMarker) {
            this(stateCallback, captureSessionListener, durationNs);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CameraInteropConfig)) {
                return false;
            }
            CameraInteropConfig cameraInteropConfig = (CameraInteropConfig) obj;
            return Intrinsics.areEqual(this.cameraDeviceStateCallback, cameraInteropConfig.cameraDeviceStateCallback) && Intrinsics.areEqual(this.cameraCaptureSessionListener, cameraInteropConfig.cameraCaptureSessionListener) && Intrinsics.areEqual(this.cameraOpenRetryMaxTimeoutNs, cameraInteropConfig.cameraOpenRetryMaxTimeoutNs);
        }

        public int hashCode() {
            CameraDevice.StateCallback stateCallback = this.cameraDeviceStateCallback;
            int iHashCode = (stateCallback == null ? 0 : stateCallback.hashCode()) * 31;
            CameraInterop.CaptureSessionListener captureSessionListener = this.cameraCaptureSessionListener;
            int iHashCode2 = (iHashCode + (captureSessionListener == null ? 0 : captureSessionListener.hashCode())) * 31;
            DurationNs durationNs = this.cameraOpenRetryMaxTimeoutNs;
            return iHashCode2 + (durationNs != null ? DurationNs.m1882hashCodeimpl(durationNs.m1884unboximpl()) : 0);
        }

        public String toString() {
            return "CameraInteropConfig(cameraDeviceStateCallback=" + this.cameraDeviceStateCallback + ", cameraCaptureSessionListener=" + this.cameraCaptureSessionListener + ", cameraOpenRetryMaxTimeoutNs=" + this.cameraOpenRetryMaxTimeoutNs + ')';
        }

        private CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs) {
            this.cameraDeviceStateCallback = stateCallback;
            this.cameraCaptureSessionListener = captureSessionListener;
            this.cameraOpenRetryMaxTimeoutNs = durationNs;
        }

        public /* synthetic */ CameraInteropConfig(CameraDevice.StateCallback stateCallback, CameraInterop.CaptureSessionListener captureSessionListener, DurationNs durationNs, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : stateCallback, (i & 2) != 0 ? null : captureSessionListener, (i & 4) != 0 ? null : durationNs, null);
        }

        public final CameraDevice.StateCallback getCameraDeviceStateCallback() {
            return this.cameraDeviceStateCallback;
        }

        public final CameraInterop.CaptureSessionListener getCameraCaptureSessionListener() {
            return this.cameraCaptureSessionListener;
        }

        /* JADX INFO: renamed from: getCameraOpenRetryMaxTimeoutNs-QWez1Bs, reason: not valid java name */
        public final DurationNs m1615getCameraOpenRetryMaxTimeoutNsQWez1Bs() {
            return this.cameraOpenRetryMaxTimeoutNs;
        }
    }

    public static final class ThreadConfig {
        private final Executor defaultBackgroundExecutor;
        private final Executor defaultBlockingExecutor;
        private final Executor defaultCameraExecutor;
        private final Handler defaultCameraHandler;
        private final Function0 defaultCameraHandlerFn;
        private final Executor defaultLightweightExecutor;
        private final CoroutineScope testOnlyScope;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ThreadConfig)) {
                return false;
            }
            ThreadConfig threadConfig = (ThreadConfig) obj;
            return Intrinsics.areEqual(this.defaultLightweightExecutor, threadConfig.defaultLightweightExecutor) && Intrinsics.areEqual(this.defaultBackgroundExecutor, threadConfig.defaultBackgroundExecutor) && Intrinsics.areEqual(this.defaultBlockingExecutor, threadConfig.defaultBlockingExecutor) && Intrinsics.areEqual(this.defaultCameraExecutor, threadConfig.defaultCameraExecutor) && Intrinsics.areEqual(this.defaultCameraHandler, threadConfig.defaultCameraHandler) && Intrinsics.areEqual(this.defaultCameraHandlerFn, threadConfig.defaultCameraHandlerFn) && Intrinsics.areEqual(this.testOnlyScope, threadConfig.testOnlyScope);
        }

        public int hashCode() {
            Executor executor = this.defaultLightweightExecutor;
            int iHashCode = (executor == null ? 0 : executor.hashCode()) * 31;
            Executor executor2 = this.defaultBackgroundExecutor;
            int iHashCode2 = (iHashCode + (executor2 == null ? 0 : executor2.hashCode())) * 31;
            Executor executor3 = this.defaultBlockingExecutor;
            int iHashCode3 = (iHashCode2 + (executor3 == null ? 0 : executor3.hashCode())) * 31;
            Executor executor4 = this.defaultCameraExecutor;
            int iHashCode4 = (iHashCode3 + (executor4 == null ? 0 : executor4.hashCode())) * 31;
            Handler handler = this.defaultCameraHandler;
            int iHashCode5 = (iHashCode4 + (handler == null ? 0 : handler.hashCode())) * 31;
            Function0 function0 = this.defaultCameraHandlerFn;
            int iHashCode6 = (iHashCode5 + (function0 == null ? 0 : function0.hashCode())) * 31;
            CoroutineScope coroutineScope = this.testOnlyScope;
            return iHashCode6 + (coroutineScope != null ? coroutineScope.hashCode() : 0);
        }

        public String toString() {
            return "ThreadConfig(defaultLightweightExecutor=" + this.defaultLightweightExecutor + ", defaultBackgroundExecutor=" + this.defaultBackgroundExecutor + ", defaultBlockingExecutor=" + this.defaultBlockingExecutor + ", defaultCameraExecutor=" + this.defaultCameraExecutor + ", defaultCameraHandler=" + this.defaultCameraHandler + ", defaultCameraHandlerFn=" + this.defaultCameraHandlerFn + ", testOnlyScope=" + this.testOnlyScope + ')';
        }

        public ThreadConfig(Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, Function0 function0, CoroutineScope coroutineScope) {
            this.defaultLightweightExecutor = executor;
            this.defaultBackgroundExecutor = executor2;
            this.defaultBlockingExecutor = executor3;
            this.defaultCameraExecutor = executor4;
            this.defaultCameraHandler = handler;
            this.defaultCameraHandlerFn = function0;
            this.testOnlyScope = coroutineScope;
        }

        public /* synthetic */ ThreadConfig(Executor executor, Executor executor2, Executor executor3, Executor executor4, Handler handler, Function0 function0, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : executor, (i & 2) != 0 ? null : executor2, (i & 4) != 0 ? null : executor3, (i & 8) != 0 ? null : executor4, (i & 16) != 0 ? null : handler, (i & 32) != 0 ? null : function0, (i & 64) != 0 ? null : coroutineScope);
        }

        public final Executor getDefaultLightweightExecutor() {
            return this.defaultLightweightExecutor;
        }

        public final Executor getDefaultBackgroundExecutor() {
            return this.defaultBackgroundExecutor;
        }

        public final Executor getDefaultBlockingExecutor() {
            return this.defaultBlockingExecutor;
        }

        public final Executor getDefaultCameraExecutor() {
            return this.defaultCameraExecutor;
        }

        public final Handler getDefaultCameraHandler() {
            return this.defaultCameraHandler;
        }

        public final Function0 getDefaultCameraHandlerFn() {
            return this.defaultCameraHandlerFn;
        }

        public final CoroutineScope getTestOnlyScope() {
            return this.testOnlyScope;
        }
    }

    public static final class CameraMetadataConfig {
        private final Set cacheBlocklist;
        private final Map cameraCacheBlocklist;

        public CameraMetadataConfig(Set cacheBlocklist, Map cameraCacheBlocklist) {
            Intrinsics.checkNotNullParameter(cacheBlocklist, "cacheBlocklist");
            Intrinsics.checkNotNullParameter(cameraCacheBlocklist, "cameraCacheBlocklist");
            this.cacheBlocklist = cacheBlocklist;
            this.cameraCacheBlocklist = cameraCacheBlocklist;
        }

        public /* synthetic */ CameraMetadataConfig(Set set, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? SetsKt.emptySet() : set, (i & 2) != 0 ? MapsKt.emptyMap() : map);
        }

        public final Set getCacheBlocklist() {
            return this.cacheBlocklist;
        }

        public final Map getCameraCacheBlocklist() {
            return this.cameraCacheBlocklist;
        }
    }

    public static final class CameraBackendConfig {
        private final Map cameraBackends;
        private final String defaultBackend;
        private final CameraBackend internalBackend;

        public /* synthetic */ CameraBackendConfig(CameraBackend cameraBackend, String str, Map map, DefaultConstructorMarker defaultConstructorMarker) {
            this(cameraBackend, str, map);
        }

        private CameraBackendConfig(CameraBackend cameraBackend, String str, Map cameraBackends) {
            Intrinsics.checkNotNullParameter(cameraBackends, "cameraBackends");
            this.internalBackend = cameraBackend;
            this.defaultBackend = str;
            this.cameraBackends = cameraBackends;
            if (str != null) {
                if (cameraBackends.containsKey(str != null ? CameraBackendId.m1526boximpl(str) : null)) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append((Object) (str == null ? "null" : CameraBackendId.m1531toStringimpl(str)));
                sb.append(" does not exist in cameraBackends! Available backends are: ");
                sb.append(cameraBackends.keySet());
                throw new IllegalStateException(sb.toString().toString());
            }
        }

        public final CameraBackend getInternalBackend() {
            return this.internalBackend;
        }

        /* JADX INFO: renamed from: getDefaultBackend-AKmI2lo, reason: not valid java name */
        public final String m1614getDefaultBackendAKmI2lo() {
            return this.defaultBackend;
        }

        public /* synthetic */ CameraBackendConfig(CameraBackend cameraBackend, String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : cameraBackend, (i & 2) != 0 ? null : str, (i & 4) != 0 ? MapsKt.emptyMap() : map, null);
        }

        public final Map getCameraBackends() {
            return this.cameraBackends;
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CameraPipe create(Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("CameraPipe");
                CameraPipeComponent cameraPipeComponentBuild = DaggerCameraPipeComponent.builder().cameraPipeConfigModule(new CameraPipeConfigModule(config)).threadConfigModule(new ThreadConfigModule(config.getThreadConfig())).build();
                Trace.endSection();
                Intrinsics.checkNotNull(cameraPipeComponentBuild);
                return new CameraPipeImpl(cameraPipeComponentBuild);
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }
}
