package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Request;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface GraphProcessor {
    void close();

    Request getRepeatingRequest();

    void setRepeatingRequest(Request request);

    boolean submit(List list);

    boolean trigger(Map map);

    void update3AParameters(Map map);

    void updateGraphParameters(Map map);

    void updateRequestListeners(List list);
}
