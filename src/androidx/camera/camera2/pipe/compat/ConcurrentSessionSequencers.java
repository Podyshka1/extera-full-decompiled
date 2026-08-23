package androidx.camera.camera2.pipe.compat;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ConcurrentSessionSequencers {
    private final Object lock = new Object();
    private final Map sequencers = new LinkedHashMap();
    private final Set pending = new LinkedHashSet();

    public final ConcurrentSessionSequencer getSequencer(CameraGraphId cameraGraphId, ConcurrentCameraGraphs concurrentCameraGraphs) {
        ConcurrentSessionSequencer concurrentSessionSequencer;
        Intrinsics.checkNotNullParameter(cameraGraphId, "cameraGraphId");
        Intrinsics.checkNotNullParameter(concurrentCameraGraphs, "concurrentCameraGraphs");
        synchronized (this.lock) {
            try {
                if (this.sequencers.containsKey(concurrentCameraGraphs)) {
                    this.pending.remove(cameraGraphId);
                    Set cameraGraphIds = concurrentCameraGraphs.getCameraGraphIds();
                    if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(cameraGraphIds) || !cameraGraphIds.isEmpty()) {
                        Iterator it = cameraGraphIds.iterator();
                        while (it.hasNext()) {
                            if (this.pending.contains((CameraGraphId) it.next())) {
                                Object obj = this.sequencers.get(concurrentCameraGraphs);
                                if (obj == null) {
                                    throw new IllegalStateException("Required value was null.");
                                }
                                concurrentSessionSequencer = (ConcurrentSessionSequencer) obj;
                                return concurrentSessionSequencer;
                            }
                        }
                    }
                    Object objRemove = this.sequencers.remove(concurrentCameraGraphs);
                    if (objRemove == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    concurrentSessionSequencer = (ConcurrentSessionSequencer) objRemove;
                    return concurrentSessionSequencer;
                }
                ConcurrentSessionSequencer concurrentSessionSequencer2 = new ConcurrentSessionSequencer();
                this.sequencers.put(concurrentCameraGraphs, concurrentSessionSequencer2);
                this.pending.addAll(SetsKt.minus(concurrentCameraGraphs.getCameraGraphIds(), cameraGraphId));
                return concurrentSessionSequencer2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
