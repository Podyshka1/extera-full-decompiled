package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.InputConfiguration;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;)V", "create", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;", "cameraDevice", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "surfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "captureSessionState", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidMSessionFactory\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,588:1\n126#2:589\n153#2,3:590\n126#2:595\n153#2,3:596\n71#3,2:593\n71#3,2:599\n*S KotlinDebug\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidMSessionFactory\n*L\n122#1:589\n122#1:590,3\n135#1:595\n135#1:596,3\n126#1:593,2\n137#1:599,2\n*E\n"})
public final class AndroidMSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidMSessionFactory(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph.Config config) {
        this.threads = threads;
        this.streamGraph = streamGraphImpl;
        this.graphConfig = config;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map<StreamId, ? extends Surface> surfaces, CaptureSessionState captureSessionState) {
        if (this.graphConfig.getInput() != null) {
            OutputStream.Config config = (OutputStream.Config) CollectionsKt.single((List) ((InputStream.Config) CollectionsKt.single((List) this.graphConfig.getInput())).getStream().getOutputs());
            InputConfiguration inputConfiguration = new InputConfiguration(config.getSize().getWidth(), config.getSize().getHeight(), config.getFormat());
            ArrayList arrayList = new ArrayList(surfaces.size());
            Iterator<Map.Entry<StreamId, ? extends Surface>> it = surfaces.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
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
            Iterator<Map.Entry<StreamId, ? extends Surface>> it2 = surfaces.entrySet().iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().getValue());
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
