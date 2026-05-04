package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.CameraStream;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface StreamGraph {
    CameraStream get(CameraStream.Config config);

    /* JADX INFO: renamed from: get-aKI5c8E, reason: not valid java name */
    CameraStream mo1782getaKI5c8E(int i);

    /* JADX INFO: renamed from: get-iYJqvbA, reason: not valid java name */
    OutputStream mo1783getiYJqvbA(int i);

    List getInputs();

    List getOutputs();

    List getStreams();

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.StreamGraph$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX INFO: renamed from: $default$get-aKI5c8E, reason: not valid java name */
        public static CameraStream m1784$default$getaKI5c8E(StreamGraph streamGraph, int i) {
            Object next;
            Iterator it = streamGraph.getStreams().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StreamId.m1789equalsimpl0(((CameraStream) next).m1616getIdptHMqGs(), i)) {
                    break;
                }
            }
            return (CameraStream) next;
        }

        /* JADX INFO: renamed from: $default$get-iYJqvbA, reason: not valid java name */
        public static OutputStream m1785$default$getiYJqvbA(StreamGraph streamGraph, int i) {
            Object next;
            Iterator it = streamGraph.getOutputs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (OutputId.m1668equalsimpl0(((OutputStream) next).mo1686getId4LaLFng(), i)) {
                    break;
                }
            }
            return (OutputStream) next;
        }
    }
}
