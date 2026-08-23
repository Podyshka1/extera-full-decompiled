package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidNSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidNSessionFactory(Threads threads, StreamGraphImpl streamGraph, CameraGraph.Config graphConfig) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        this.threads = threads;
        this.streamGraph = streamGraph;
        this.graphConfig = graphConfig;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map surfaces, CaptureSessionState captureSessionState) throws Exception {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, surfaces);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        if (this.graphConfig.getInput() == null) {
            zCreateReprocessableCaptureSessionByConfigurations = cameraDevice.createCaptureSessionByOutputConfigurations(outputConfigurationsBuildOutputConfigurations.getAll(), captureSessionState);
        } else {
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.single(((InputStream.Config) CollectionsKt.single(this.graphConfig.getInput())).getStream().getOutputs());
            zCreateReprocessableCaptureSessionByConfigurations = cameraDevice.createReprocessableCaptureSessionByConfigurations(new InputConfigData(config.getSize().getWidth(), config.getSize().getHeight(), config.m1693getFormat8FPWQzE()), outputConfigurationsBuildOutputConfigurations.getAll(), captureSessionState);
        }
        if (zCreateReprocessableCaptureSessionByConfigurations) {
            return new CaptureSessionFactory.Result.Success(MapsKt.emptyMap(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to create capture session from " + cameraDevice + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
