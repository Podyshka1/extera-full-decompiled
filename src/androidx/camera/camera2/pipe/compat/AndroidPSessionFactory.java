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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V", "create", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;", "cameraDevice", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "surfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "captureSessionState", "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidPSessionFactory\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,588:1\n71#2,2:589\n71#2,2:598\n1563#3:591\n1634#3,3:592\n1740#3,3:595\n*S KotlinDebug\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/AndroidPSessionFactory\n*L\n252#1:589,2\n286#1:598,2\n258#1:591\n258#1:592,3\n268#1:595,3\n*E\n"})
public final class AndroidPSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidPSessionFactory(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl) {
        this.threads = threads;
        this.graphConfig = config;
        this.streamGraph = streamGraphImpl;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDevice, Map<StreamId, ? extends Surface> surfaces, CaptureSessionState captureSessionState) {
        int sessionMode;
        int i;
        ArrayList arrayList;
        CaptureSessionState captureSessionState2;
        int sessionMode2 = this.graphConfig.getSessionMode();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.INSTANCE;
        if (CameraGraph.OperatingMode.m1197equalsimpl0(sessionMode2, companion.m1203getNORMAL2uNL3no())) {
            i = 0;
        } else {
            if (CameraGraph.OperatingMode.m1197equalsimpl0(sessionMode2, companion.m1202getHIGH_SPEED2uNL3no())) {
                sessionMode = 1;
            } else {
                boolean zM1197equalsimpl0 = CameraGraph.OperatingMode.m1197equalsimpl0(sessionMode2, companion.m1201getEXTENSION2uNL3no());
                CameraGraph.Config config = this.graphConfig;
                if (zM1197equalsimpl0) {
                    Buffer$$ExternalSyntheticBUOutline4.m837m("Unsupported session mode: ", CameraGraph.OperatingMode.m1199toStringimpl(config.getSessionMode()));
                    return null;
                }
                sessionMode = config.getSessionMode();
            }
            i = sessionMode;
        }
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, surfaces);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        List<InputStream.Config> input = this.graphConfig.getInput();
        if (input != null) {
            List<InputStream.Config> list = input;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                OutputStream.Config config2 = (OutputStream.Config) CollectionsKt.single((List) ((InputStream.Config) it.next()).getStream().getOutputs());
                arrayList2.add(new InputConfigData(config2.getSize().getWidth(), config2.getSize().getHeight(), config2.getFormat()));
            }
            arrayList = arrayList2;
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("All InputStream.Config objects must have the same format for multi resolution");
                    return null;
                }
            }
        }
        if (cameraDevice.createCaptureSession(new SessionConfigData(i, arrayList, outputConfigurationsBuildOutputConfigurations.getAll(), this.threads.getCamera2Executor(), captureSessionState, this.graphConfig.getSessionTemplate(), this.graphConfig.getSessionParameters(), this.graphConfig.getSessionColorSpace(), null))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            StringBuilder sb = new StringBuilder("Failed to create capture session from ");
            sb.append(cameraDevice);
            sb.append(" for ");
            captureSessionState2 = captureSessionState;
            sb.append(captureSessionState2);
            sb.append('!');
            android.util.Log.w("CXCP", sb.toString());
        } else {
            captureSessionState2 = captureSessionState;
        }
        captureSessionState2.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
