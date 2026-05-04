package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.InputConfiguration;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidMSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidMSessionFactory(Threads threads, StreamGraphImpl streamGraph, CameraGraph.Config graphConfig) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        this.threads = threads;
        this.streamGraph = streamGraph;
        this.graphConfig = graphConfig;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map surfaces, CaptureSessionState captureSessionState) throws Exception {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        if (this.graphConfig.getInput() != null) {
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.single(((InputStream.Config) CollectionsKt.single(this.graphConfig.getInput())).getStream().getOutputs());
            InputConfiguration inputConfiguration = new InputConfiguration(config.getSize().getWidth(), config.getSize().getHeight(), config.m1693getFormat8FPWQzE());
            ArrayList arrayList = new ArrayList(surfaces.size());
            Iterator it = surfaces.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add((Surface) ((Map.Entry) it.next()).getValue());
            }
            if (!cameraDevice.createReprocessableCaptureSession(inputConfiguration, arrayList, captureSessionState)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to create reprocessable captures session from " + cameraDevice + " for " + captureSessionState + '!');
                }
                captureSessionState.onSessionFinalized();
                return CaptureSessionFactory.Result.Failed.INSTANCE;
            }
        } else {
            ArrayList arrayList2 = new ArrayList(surfaces.size());
            Iterator it2 = surfaces.entrySet().iterator();
            while (it2.hasNext()) {
                arrayList2.add((Surface) ((Map.Entry) it2.next()).getValue());
            }
            if (!cameraDevice.createCaptureSession(arrayList2, captureSessionState)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to create captures session from " + cameraDevice + " for " + captureSessionState + '!');
                }
                captureSessionState.onSessionFinalized();
                return CaptureSessionFactory.Result.Failed.INSTANCE;
            }
        }
        return new CaptureSessionFactory.Result.Success(MapsKt.emptyMap(), CaptureSessionFactoryKt.buildSimpleOutputSurfaceMap(surfaces, this.streamGraph));
    }
}
