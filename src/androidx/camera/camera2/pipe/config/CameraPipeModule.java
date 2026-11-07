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
import androidx.camera.camera2.pipe.graph.SurfaceGraph$$ExternalSyntheticBUOutline0;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import androidx.view.LifecycleRegistry$$ExternalSyntheticBUOutline0;
import java.util.Map;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b!\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/config/CameraPipeModule;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CameraPipeModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0012\u0010\f\u001a\u00020\r2\b\b\u0001\u0010\u000e\u001a\u00020\u0005H\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u000e\u001a\u00020\u0005H\u0007J\"\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0012\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u000e\u001a\u00020\u0005H\u0007J:\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u000e\b\u0001\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\b\b\u0001\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0007H\u0007J\b\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0007J\u0012\u0010*\u001a\u00020+2\b\b\u0001\u0010\u000e\u001a\u00020\u0005H\u0007¨\u0006,"}, d2 = {"Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "provideContext", "Landroid/content/Context;", "config", "Landroidx/camera/camera2/pipe/CameraPipe$Config;", "provideCameraPipeJob", "Lkotlinx/coroutines/Job;", "provideCameraMetadataConfig", "Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;", "provideCameraManager", "Landroid/hardware/camera2/CameraManager;", "cameraPipeContext", "provideDevicePolicyManagerWrapper", "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;", "provideCameraContext", "Landroidx/camera/camera2/pipe/CameraContext;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "cameraBackends", "Landroidx/camera/camera2/pipe/CameraBackends;", "providePackageManager", "Landroid/content/pm/PackageManager;", "provideCameraBackends", "defaultCameraBackend", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/CameraBackend;", "cameraPipeLifetime", "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;", "configureImageSources", "Landroidx/camera/camera2/pipe/media/ImageSources;", "imageReaderImageSources", "Landroidx/camera/camera2/pipe/media/ImageReaderImageSources;", "cameraPipeConfig", "provideCameraSurfaceManager", "Landroidx/camera/camera2/pipe/CameraSurfaceManager;", "provideStrictMode", "Landroidx/camera/camera2/pipe/StrictMode;", "flags", "Landroidx/camera/camera2/pipe/CameraPipe$Flags;", "provideCameraDeviceSetupCompatFactory", "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraPipeComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPipeComponent.kt\nandroidx/camera/camera2/pipe/config/CameraPipeModule$Companion\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,215:1\n48#2,2:216\n71#2,4:218\n50#2,3:222\n78#2,4:225\n*S KotlinDebug\n*F\n+ 1 CameraPipeComponent.kt\nandroidx/camera/camera2/pipe/config/CameraPipeModule$Companion\n*L\n166#1:216,2\n166#1:218,4\n166#1:222,3\n166#1:225,4\n*E\n"})
    public static final class Companion {
        /* JADX INFO: renamed from: $r8$lambda$u5fcAhcmf6Jw690I5-P-Cj5GlYg, reason: not valid java name */
        public static CameraBackend m1557$r8$lambda$u5fcAhcmf6Jw690I5PCj5GlYg(CameraBackend cameraBackend, CameraContext cameraContext) {
            return cameraBackend;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Context provideContext(CameraPipe.Config config) {
            return config.getAppContext();
        }

        public final Job provideCameraPipeJob() {
            return JobKt__JobKt.Job$default(null, 1, null);
        }

        public final CameraPipe.CameraMetadataConfig provideCameraMetadataConfig(CameraPipe.Config config) {
            return config.getCameraMetadataConfig();
        }

        public final CameraManager provideCameraManager(Context cameraPipeContext) {
            return (CameraManager) cameraPipeContext.getSystemService("camera");
        }

        public final DevicePolicyManagerWrapper provideDevicePolicyManagerWrapper(Context cameraPipeContext) {
            return new AndroidDevicePolicyManagerWrapper((DevicePolicyManager) cameraPipeContext.getSystemService("device_policy"));
        }

        public final CameraContext provideCameraContext(final Context cameraPipeContext, final Threads threads, final CameraBackends cameraBackends) {
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
            return cameraPipeContext.getPackageManager();
        }

        public final CameraBackends provideCameraBackends(CameraPipe.Config config, Provider<CameraBackend> defaultCameraBackend, Context cameraPipeContext, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
            final CameraBackend internalBackend = config.getCameraBackendConfig().getInternalBackend();
            if (internalBackend == null) {
                Debug debug = Debug.INSTANCE;
                try {
                    Trace.beginSection("Initialize defaultCameraBackend");
                    internalBackend = defaultCameraBackend.get();
                } finally {
                    Trace.endSection();
                }
            }
            if (config.getCameraBackendConfig().getCameraBackends().containsKey(CameraBackendId.m1222boximpl(internalBackend.mo1220getIdQwmhuAM()))) {
                LifecycleRegistry$$ExternalSyntheticBUOutline0.m152m("CameraBackendConfig#cameraBackends should not contain a backend with ", CameraBackendId.m1227toStringimpl(internalBackend.mo1220getIdQwmhuAM()), ". Use CameraBackendConfig#internalBackend field instead.");
                return null;
            }
            Map mapPlus = MapsKt.plus(config.getCameraBackendConfig().getCameraBackends(), TuplesKt.to(CameraBackendId.m1222boximpl(internalBackend.mo1220getIdQwmhuAM()), new CameraBackendFactory() { // from class: androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$$ExternalSyntheticLambda0
                @Override // androidx.camera.camera2.pipe.CameraBackendFactory
                public final CameraBackend create(CameraContext cameraContext) {
                    return CameraPipeModule.Companion.m1557$r8$lambda$u5fcAhcmf6Jw690I5PCj5GlYg(internalBackend, cameraContext);
                }
            }));
            String defaultBackend = config.getCameraBackendConfig().getDefaultBackend();
            if (defaultBackend == null) {
                defaultBackend = internalBackend.mo1220getIdQwmhuAM();
            }
            String str = defaultBackend;
            if (!mapPlus.containsKey(CameraBackendId.m1222boximpl(str))) {
                StringBuilder sb = new StringBuilder("Failed to find ");
                sb.append((Object) CameraBackendId.m1227toStringimpl(str));
                SurfaceGraph$$ExternalSyntheticBUOutline0.m71m(sb, " in the list of available CameraPipe backends! Available values are ", mapPlus.keySet());
                return null;
            }
            return new CameraBackendsImpl(str, mapPlus, cameraPipeContext, threads, cameraPipeLifetime, null);
        }

        public final ImageSources configureImageSources(ImageReaderImageSources imageReaderImageSources, CameraPipe.Config cameraPipeConfig) {
            return cameraPipeConfig.getImageSources() != null ? cameraPipeConfig.getImageSources() : imageReaderImageSources;
        }

        public final CameraSurfaceManager provideCameraSurfaceManager() {
            return new CameraSurfaceManager();
        }

        public final StrictMode provideStrictMode(CameraPipe.Flags flags) {
            return new StrictMode(flags.getStrictModeEnabled());
        }

        public final CameraDeviceSetupCompatFactory provideCameraDeviceSetupCompatFactory(Context cameraPipeContext) {
            return new CameraDeviceSetupCompatFactory(cameraPipeContext);
        }
    }
}
