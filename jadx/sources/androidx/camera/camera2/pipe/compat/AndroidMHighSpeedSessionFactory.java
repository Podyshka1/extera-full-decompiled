package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidMHighSpeedSessionFactory implements CaptureSessionFactory {
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map surfaces, CaptureSessionState captureSessionState) throws Exception {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        ArrayList arrayList = new ArrayList(surfaces.size());
        Iterator it = surfaces.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((Surface) ((Map.Entry) it.next()).getValue());
        }
        if (cameraDevice.createConstrainedHighSpeedCaptureSession(arrayList, captureSessionState)) {
            return new CaptureSessionFactory.Result.Success(MapsKt.emptyMap(), CaptureSessionFactoryKt.buildSimpleOutputSurfaceMap(surfaces, this.streamGraph));
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to create ConstrainedHighSpeedCaptureSession from " + cameraDevice + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }

    public AndroidMHighSpeedSessionFactory(StreamGraphImpl streamGraph, Threads threads) {
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.streamGraph = streamGraph;
        this.threads = threads;
    }
}
