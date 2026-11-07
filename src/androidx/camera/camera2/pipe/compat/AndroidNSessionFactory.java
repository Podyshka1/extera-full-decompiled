package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;)V", "create", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;", "cameraDevice", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "surfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "captureSessionState", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidNSessionFactory\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,588:1\n71#2,2:589\n71#2,2:591\n*S KotlinDebug\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidNSessionFactory\n*L\n191#1:589,2\n215#1:591,2\n*E\n"})
public final class AndroidNSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidNSessionFactory(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph.Config config) {
        this.threads = threads;
        this.streamGraph = streamGraphImpl;
        this.graphConfig = config;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map<StreamId, ? extends Surface> surfaces, CaptureSessionState captureSessionState) {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
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
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.single((List) ((InputStream.Config) CollectionsKt.single((List) this.graphConfig.getInput())).getStream().getOutputs());
            zCreateReprocessableCaptureSessionByConfigurations = cameraDevice.createReprocessableCaptureSessionByConfigurations(new InputConfigData(config.getSize().getWidth(), config.getSize().getHeight(), config.getFormat()), outputConfigurationsBuildOutputConfigurations.getAll(), captureSessionState);
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
