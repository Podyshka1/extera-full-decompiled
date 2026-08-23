package androidx.camera.camera2.pipe.config;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraManager;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendFactory;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.AndroidDevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.config.CameraPipeModule;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import java.util.Map;
import javax.inject.Provider;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Context provideContext(CameraPipe.Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return config.getAppContext();
        }

        public final Job provideCameraPipeJob() {
            return JobKt__JobKt.Job$default(null, 1, null);
        }

        public final CameraPipe.CameraMetadataConfig provideCameraMetadataConfig(CameraPipe.Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return config.getCameraMetadataConfig();
        }

        public final CameraManager provideCameraManager(Context cameraPipeContext) {
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            Object systemService = cameraPipeContext.getSystemService("camera");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.camera2.CameraManager");
            return (CameraManager) systemService;
        }

        public final DevicePolicyManagerWrapper provideDevicePolicyManagerWrapper(Context cameraPipeContext) {
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            Object systemService = cameraPipeContext.getSystemService("device_policy");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.admin.DevicePolicyManager");
            return new AndroidDevicePolicyManagerWrapper((DevicePolicyManager) systemService);
        }

        public final CameraContext provideCameraContext(final Context cameraPipeContext, final Threads threads, final CameraBackends cameraBackends) {
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(cameraBackends, "cameraBackends");
            return new CameraContext(cameraPipeContext, threads, cameraBackends) { // from class: androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$provideCameraContext$1
                private final Context appContext;
                private final CameraBackends cameraBackends;
                private final Threads threads;

                {
                    this.appContext = cameraPipeContext;
                    this.threads = threads;
                    this.cameraBackends = cameraBackends;
                }
            };
        }

        public final PackageManager providePackageManager(Context cameraPipeContext) {
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            PackageManager packageManager = cameraPipeContext.getPackageManager();
            Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
            return packageManager;
        }

        public final CameraBackends provideCameraBackends(CameraPipe.Config config, Provider defaultCameraBackend, Context cameraPipeContext, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(defaultCameraBackend, "defaultCameraBackend");
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(cameraPipeLifetime, "cameraPipeLifetime");
            final CameraBackend internalBackend = config.getCameraBackendConfig().getInternalBackend();
            if (internalBackend == null) {
                Debug debug = Debug.INSTANCE;
                try {
                    Trace.beginSection("Initialize defaultCameraBackend");
                    internalBackend = (CameraBackend) defaultCameraBackend.get();
                } finally {
                    Trace.endSection();
                }
            }
            if (config.getCameraBackendConfig().getCameraBackends().containsKey(CameraBackendId.m1526boximpl(internalBackend.mo1524getIdQwmhuAM()))) {
                throw new IllegalStateException(("CameraBackendConfig#cameraBackends should not contain a backend with " + ((Object) CameraBackendId.m1531toStringimpl(internalBackend.mo1524getIdQwmhuAM())) + ". Use CameraBackendConfig#internalBackend field instead.").toString());
            }
            Map mapPlus = MapsKt.plus(config.getCameraBackendConfig().getCameraBackends(), TuplesKt.m1081to(CameraBackendId.m1526boximpl(internalBackend.mo1524getIdQwmhuAM()), new CameraBackendFactory() { // from class: androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$$ExternalSyntheticLambda0
                @Override // androidx.camera.camera2.pipe.CameraBackendFactory
                public final CameraBackend create(CameraContext cameraContext) {
                    return CameraPipeModule.Companion.provideCameraBackends$lambda$2(internalBackend, cameraContext);
                }
            }));
            String strM1614getDefaultBackendAKmI2lo = config.getCameraBackendConfig().m1614getDefaultBackendAKmI2lo();
            if (strM1614getDefaultBackendAKmI2lo == null) {
                strM1614getDefaultBackendAKmI2lo = internalBackend.mo1524getIdQwmhuAM();
            }
            String str = strM1614getDefaultBackendAKmI2lo;
            if (!mapPlus.containsKey(CameraBackendId.m1526boximpl(str))) {
                throw new IllegalStateException(("Failed to find " + ((Object) CameraBackendId.m1531toStringimpl(str)) + " in the list of available CameraPipe backends! Available values are " + mapPlus.keySet()).toString());
            }
            return new CameraBackendsImpl(str, mapPlus, cameraPipeContext, threads, cameraPipeLifetime, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CameraBackend provideCameraBackends$lambda$2(CameraBackend cameraBackend, CameraContext it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Intrinsics.checkNotNull(cameraBackend);
            return cameraBackend;
        }

        public final ImageSources configureImageSources(ImageReaderImageSources imageReaderImageSources, CameraPipe.Config cameraPipeConfig) {
            Intrinsics.checkNotNullParameter(imageReaderImageSources, "imageReaderImageSources");
            Intrinsics.checkNotNullParameter(cameraPipeConfig, "cameraPipeConfig");
            return cameraPipeConfig.getImageSources() != null ? cameraPipeConfig.getImageSources() : imageReaderImageSources;
        }

        public final CameraSurfaceManager provideCameraSurfaceManager() {
            return new CameraSurfaceManager();
        }

        public final StrictMode provideStrictMode(CameraPipe.Flags flags) {
            Intrinsics.checkNotNullParameter(flags, "flags");
            return new StrictMode(flags.getStrictModeEnabled());
        }

        public final CameraDeviceSetupCompatFactory provideCameraDeviceSetupCompatFactory(Context cameraPipeContext) {
            Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
            return new CameraDeviceSetupCompatFactory(cameraPipeContext);
        }
    }
}
