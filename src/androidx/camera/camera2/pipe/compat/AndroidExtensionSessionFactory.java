package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidExtensionSessionFactory implements CaptureSessionFactory {
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;

    public AndroidExtensionSessionFactory(Threads threads, CameraGraph.Config graphConfig, StreamGraphImpl streamGraph, Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(camera2MetadataProvider, "camera2MetadataProvider");
        Intrinsics.checkNotNullParameter(strictMode, "strictMode");
        this.threads = threads;
        this.graphConfig = graphConfig;
        this.streamGraph = streamGraph;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map surfaces, CaptureSessionState captureSessionState) throws Exception {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        if (!CameraGraph.OperatingMode.m1591equalsimpl0(this.graphConfig.m1579getSessionMode2uNL3no(), CameraGraph.OperatingMode.Companion.m1595getEXTENSION2uNL3no())) {
            throw new IllegalArgumentException("Unsupported session mode: " + ((Object) CameraGraph.OperatingMode.m1593toStringimpl(this.graphConfig.m1579getSessionMode2uNL3no())) + " for Extension CameraGraph");
        }
        Object obj = this.graphConfig.getSessionParameters().get(CameraPipeKeys.INSTANCE.getCamera2ExtensionMode());
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num == null) {
            throw new IllegalStateException("The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph.");
        }
        int iIntValue = num.intValue();
        if (this.graphConfig.getInput() != null) {
            throw new IllegalStateException("Reprocessing is not supported for Extensions");
        }
        CameraMetadata cameraMetadataMo1841awaitCameraMetadataEfqyGwQ = this.camera2MetadataProvider.mo1841awaitCameraMetadataEfqyGwQ(cameraDevice.mo1797getCameraIdDz_R5H8());
        Set supportedExtensions = cameraMetadataMo1841awaitCameraMetadataEfqyGwQ.getSupportedExtensions();
        StrictMode strictMode = this.strictMode;
        if (!supportedExtensions.contains(Integer.valueOf(iIntValue))) {
            String str = cameraDevice + " does not support extension mode " + iIntValue + ". Supported extensions are " + supportedExtensions;
            if (strictMode.getEnabled()) {
                throw new IllegalStateException(str);
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        if (this.graphConfig.getPostviewStream() != null) {
            CameraExtensionMetadata cameraExtensionMetadataAwaitExtensionMetadata = cameraMetadataMo1841awaitCameraMetadataEfqyGwQ.awaitExtensionMetadata(iIntValue);
            StrictMode strictMode2 = this.strictMode;
            if (!cameraExtensionMetadataAwaitExtensionMetadata.isPostviewSupported()) {
                String str2 = cameraDevice + " does not support Postview streams";
                if (strictMode2.getEnabled()) {
                    throw new IllegalStateException(str2);
                }
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", str2);
                }
            }
            if (this.graphConfig.getPostviewStream().getOutputs().size() != 1) {
                throw new IllegalStateException("Postview streams can only have one OutputStream.config object");
            }
        }
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, surfaces);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        if (!outputConfigurationsBuildOutputConfigurations.getDeferred().isEmpty()) {
            throw new IllegalStateException("Deferred output is not supported for Extensions");
        }
        if (cameraDevice.createExtensionSession(new ExtensionSessionConfigData(2, outputConfigurationsBuildOutputConfigurations.getAll(), new HandlerExecutor(this.threads.getCamera2Handler()), captureSessionState, this.graphConfig.m1580getSessionTemplatefGx8uWA(), this.graphConfig.getSessionParameters(), Integer.valueOf(iIntValue), new ExtensionSessionState(captureSessionState), outputConfigurationsBuildOutputConfigurations.getPostviewOutput()))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to create ExtensionCaptureSession from " + cameraDevice + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
