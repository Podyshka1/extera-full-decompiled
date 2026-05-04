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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UseCaseThreads provideUseCaseThreads(CameraConfig cameraConfig, CameraThreadConfig cameraThreadConfig) {
            Intrinsics.checkNotNullParameter(cameraConfig, "cameraConfig");
            Intrinsics.checkNotNullParameter(cameraThreadConfig, "cameraThreadConfig");
            Executor cameraExecutor = cameraThreadConfig.getCameraExecutor();
            Intrinsics.checkNotNullExpressionValue(cameraExecutor, "getCameraExecutor(...)");
            Executor cameraExecutor2 = cameraThreadConfig.getCameraExecutor();
            Intrinsics.checkNotNullExpressionValue(cameraExecutor2, "getCameraExecutor(...)");
            CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(cameraExecutor2);
            return new UseCaseThreads(CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(coroutineDispatcherFrom).plus(new CoroutineName("CXCP-UseCase-" + cameraConfig.m1417getCameraIdDz_R5H8()))), cameraExecutor, coroutineDispatcherFrom);
        }

        public final Camera2CameraControl provideCamera2CameraControl(Camera2CameraControlCompat compat, UseCaseThreads threads, ComboRequestListener requestListener) {
            Intrinsics.checkNotNullParameter(compat, "compat");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(requestListener, "requestListener");
            return Camera2CameraControl.Companion.create(compat, threads, requestListener);
        }

        public final CameraMetadata provideCameraMetadata(CameraPipe cameraPipe, CameraConfig config) {
            Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
            Intrinsics.checkNotNullParameter(config, "config");
            try {
                return CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(cameraPipe.cameras(), config.m1417getCameraIdDz_R5H8(), null, 2, null);
            } catch (DoNotDisturbException unused) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to inject camera metadata: Do Not Disturb mode is on.");
                }
                return null;
            }
        }

        public final String provideCameraIdString(CameraConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return config.m1417getCameraIdDz_R5H8();
        }

        public final StreamConfigurationMap provideStreamConfigurationMap(CameraMetadata cameraMetadata) {
            if (cameraMetadata == null) {
                return null;
            }
            CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
            Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
            return (StreamConfigurationMap) cameraMetadata.get(SCALER_STREAM_CONFIGURATION_MAP);
        }

        public final ZslControl provideZslControl(CameraProperties cameraProperties) {
            Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
            return new ZslControlImpl(cameraProperties);
        }

        public final EncoderProfilesProvider provideEncoderProfilesProvider(String cameraIdString, CameraQuirks cameraQuirks) {
            Intrinsics.checkNotNullParameter(cameraIdString, "cameraIdString");
            Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
            return new EncoderProfilesProviderAdapter(cameraIdString, cameraQuirks.getQuirks());
        }
    }
}
