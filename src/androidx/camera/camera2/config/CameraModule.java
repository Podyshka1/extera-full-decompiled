package androidx.camera.camera2.config;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import androidx.camera.camera2.adapter.EncoderProfilesProviderAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.EncoderProfilesProvider;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b'\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/config/CameraModule;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CameraModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0007¢\u0006\u0004\b#\u0010$J!\u0010)\u001a\u00020(2\b\b\u0001\u0010%\u001a\u00020\u00192\u0006\u0010'\u001a\u00020&H\u0007¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Landroidx/camera/camera2/config/CameraModule$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/config/CameraConfig;", "cameraConfig", "Landroidx/camera/core/impl/CameraThreadConfig;", "cameraThreadConfig", "Landroidx/camera/camera2/impl/UseCaseThreads;", "provideUseCaseThreads", "(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;", "compat", "threads", "Landroidx/camera/camera2/impl/ComboRequestListener;", "requestListener", "Landroidx/camera/camera2/interop/Camera2CameraControl;", "provideCamera2CameraControl", "(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;", "Landroidx/camera/camera2/pipe/CameraPipe;", "cameraPipe", "config", "Landroidx/camera/camera2/pipe/CameraMetadata;", "provideCameraMetadata", "(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/pipe/CameraMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "provideCameraIdString", "(Landroidx/camera/camera2/config/CameraConfig;)Ljava/lang/String;", "cameraMetadata", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "provideStreamConfigurationMap", "(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroid/hardware/camera2/params/StreamConfigurationMap;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/adapter/ZslControl;", "provideZslControl", "(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/adapter/ZslControl;", "cameraIdString", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "cameraQuirks", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "provideEncoderProfilesProvider", "(Ljava/lang/String;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/EncoderProfilesProvider;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraConfig.kt\nandroidx/camera/camera2/config/CameraModule$Companion\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,218:1\n136#2,4:219\n*S KotlinDebug\n*F\n+ 1 CameraConfig.kt\nandroidx/camera/camera2/config/CameraModule$Companion\n*L\n139#1:219,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UseCaseThreads provideUseCaseThreads(CameraConfig cameraConfig, CameraThreadConfig cameraThreadConfig) {
            Executor cameraExecutor = cameraThreadConfig.getCameraExecutor();
            CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(cameraThreadConfig.getCameraExecutor());
            return new UseCaseThreads(CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(coroutineDispatcherFrom).plus(new CoroutineName("CXCP-UseCase-" + cameraConfig.getCameraId()))), cameraExecutor, coroutineDispatcherFrom);
        }

        public final Camera2CameraControl provideCamera2CameraControl(Camera2CameraControlCompat compat, UseCaseThreads threads, ComboRequestListener requestListener) {
            return Camera2CameraControl.INSTANCE.create(compat, threads, requestListener);
        }

        public final CameraMetadata provideCameraMetadata(CameraPipe cameraPipe, CameraConfig config) {
            try {
                return CameraDevices.m1239awaitCameraMetadataFpsL5FU$default(cameraPipe.cameras(), config.getCameraId(), null, 2, null);
            } catch (DoNotDisturbException unused) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to inject camera metadata: Do Not Disturb mode is on.");
                }
                return null;
            }
        }

        public final String provideCameraIdString(CameraConfig config) {
            return config.getCameraId();
        }

        public final StreamConfigurationMap provideStreamConfigurationMap(CameraMetadata cameraMetadata) {
            if (cameraMetadata != null) {
                return (StreamConfigurationMap) cameraMetadata.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            }
            return null;
        }

        public final ZslControl provideZslControl(CameraProperties cameraProperties) {
            return new ZslControlImpl(cameraProperties);
        }

        public final EncoderProfilesProvider provideEncoderProfilesProvider(String cameraIdString, CameraQuirks cameraQuirks) {
            return new EncoderProfilesProviderAdapter(cameraIdString, cameraQuirks.getQuirks());
        }
    }
}
