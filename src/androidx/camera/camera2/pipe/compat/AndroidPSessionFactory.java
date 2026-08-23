package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidPSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidPSessionFactory(Threads threads, CameraGraph.Config graphConfig, StreamGraphImpl streamGraph) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(streamGraph, "streamGraph");
        this.threads = threads;
        this.graphConfig = graphConfig;
        this.streamGraph = streamGraph;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map surfaces, CaptureSessionState captureSessionState) throws Exception {
        int iM1579getSessionMode2uNL3no;
        int i;
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(surfaces, "surfaces");
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        int iM1579getSessionMode2uNL3no2 = this.graphConfig.m1579getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1597getNORMAL2uNL3no())) {
            i = 0;
        } else {
            if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1596getHIGH_SPEED2uNL3no())) {
                iM1579getSessionMode2uNL3no = 1;
            } else {
                if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no2, companion.m1595getEXTENSION2uNL3no())) {
                    throw new IllegalArgumentException("Unsupported session mode: " + ((Object) CameraGraph.OperatingMode.m1593toStringimpl(this.graphConfig.m1579getSessionMode2uNL3no())));
                }
                iM1579getSessionMode2uNL3no = this.graphConfig.m1579getSessionMode2uNL3no();
            }
            i = iM1579getSessionMode2uNL3no;
        }
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, surfaces);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        List input = this.graphConfig.getInput();
        if (input != null) {
            List list = input;
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                OutputStream.Config config = (OutputStream.Config) CollectionsKt.single(((InputStream.Config) it.next()).getStream().getOutputs());
                arrayList.add(new InputConfigData(config.getSize().getWidth(), config.getSize().getHeight(), config.m1693getFormat8FPWQzE()));
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                if (((InputConfigData) obj).getFormat() != ((InputConfigData) arrayList.get(0)).getFormat()) {
                    throw new IllegalStateException("All InputStream.Config objects must have the same format for multi resolution");
                }
            }
        }
        if (cameraDevice.createCaptureSession(new SessionConfigData(i, arrayList, outputConfigurationsBuildOutputConfigurations.getAll(), this.threads.getCamera2Executor(), captureSessionState, this.graphConfig.m1580getSessionTemplatefGx8uWA(), this.graphConfig.getSessionParameters(), this.graphConfig.m1578getSessionColorSpacedxVZaPA(), null))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "Failed to create capture session from " + cameraDevice + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
