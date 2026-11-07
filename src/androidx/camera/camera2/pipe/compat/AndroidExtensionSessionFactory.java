package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import com.sun.jna.Native$$ExternalSyntheticBUOutline2;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ,\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "camera2MetadataProvider", "Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;", "strictMode", "Landroidx/camera/camera2/pipe/StrictMode;", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V", "create", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;", "cameraDevice", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "surfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "captureSessionState", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StrictMode.kt\nandroidx/camera/camera2/pipe/StrictMode\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,588:1\n1#2:589\n25#3,4:590\n29#3,5:596\n25#3,4:601\n29#3,5:607\n71#4,2:594\n71#4,2:605\n71#4,2:612\n71#4,2:614\n*S KotlinDebug\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory\n*L\n333#1:590,4\n333#1:596,5\n340#1:601,4\n340#1:607,5\n333#1:594,2\n340#1:605,2\n351#1:612,2\n377#1:614,2\n*E\n"})
public final class AndroidExtensionSessionFactory implements CaptureSessionFactory {
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;

    public AndroidExtensionSessionFactory(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        this.threads = threads;
        this.graphConfig = config;
        this.streamGraph = streamGraphImpl;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map<StreamId, ? extends Surface> surfaces, CaptureSessionState captureSessionState) {
        boolean zM1340equalsimpl0 = CameraGraph.OperatingMode.m1340equalsimpl0(this.graphConfig.getSessionMode(), CameraGraph.OperatingMode.INSTANCE.m1344getEXTENSION2uNL3no());
        CameraGraph.Config config = this.graphConfig;
        if (!zM1340equalsimpl0) {
            Native$$ExternalSyntheticBUOutline2.m514m("Unsupported session mode: ", CameraGraph.OperatingMode.m1342toStringimpl(config.getSessionMode()), " for Extension CameraGraph");
            return null;
        }
        Object obj = config.getSessionParameters().get(CameraPipeKeys.INSTANCE.getCamera2ExtensionMode());
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph.");
            return null;
        }
        int iIntValue = num.intValue();
        if (this.graphConfig.getInput() != null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Reprocessing is not supported for Extensions");
            return null;
        }
        CameraMetadata cameraMetadataMo1580awaitCameraMetadataEfqyGwQ = this.camera2MetadataProvider.mo1580awaitCameraMetadataEfqyGwQ(cameraDevice.getCameraId());
        Set<Integer> supportedExtensions = cameraMetadataMo1580awaitCameraMetadataEfqyGwQ.getSupportedExtensions();
        StrictMode strictMode = this.strictMode;
        if (!supportedExtensions.contains(Integer.valueOf(iIntValue))) {
            String str = cameraDevice + " does not support extension mode " + iIntValue + ". Supported extensions are " + supportedExtensions;
            if (strictMode.getEnabled()) {
                Segment$$ExternalSyntheticBUOutline1.m973m(str);
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        if (this.graphConfig.getPostviewStream() != null) {
            CameraExtensionMetadata cameraExtensionMetadataAwaitExtensionMetadata = cameraMetadataMo1580awaitCameraMetadataEfqyGwQ.awaitExtensionMetadata(iIntValue);
            StrictMode strictMode2 = this.strictMode;
            if (!cameraExtensionMetadataAwaitExtensionMetadata.isPostviewSupported()) {
                String str2 = cameraDevice + " does not support Postview streams";
                if (strictMode2.getEnabled()) {
                    Segment$$ExternalSyntheticBUOutline1.m973m(str2);
                    return null;
                }
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", str2);
                }
            }
            if (this.graphConfig.getPostviewStream().getOutputs().size() != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Postview streams can only have one OutputStream.config object");
                return null;
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
            Segment$$ExternalSyntheticBUOutline1.m973m("Deferred output is not supported for Extensions");
            return null;
        }
        if (cameraDevice.createExtensionSession(new ExtensionSessionConfigData(2, outputConfigurationsBuildOutputConfigurations.getAll(), new HandlerExecutor(this.threads.getCamera2Handler()), captureSessionState, this.graphConfig.getSessionTemplate(), this.graphConfig.getSessionParameters(), Integer.valueOf(iIntValue), new ExtensionSessionState(captureSessionState), outputConfigurationsBuildOutputConfigurations.getPostviewOutput()))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to create ExtensionCaptureSession from " + cameraDevice + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
