package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "lock", "sequencers", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;", "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;", "pending", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraGraphId;", "getSequencer", "cameraGraphId", "concurrentCameraGraphs", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentSessionSequencers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentSessionSequencers.kt\nandroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n1761#2,3:116\n*S KotlinDebug\n*F\n+ 1 ConcurrentSessionSequencers.kt\nandroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers\n*L\n56#1:116,3\n*E\n"})
public final class ConcurrentSessionSequencers {
    private final Object lock = new Object();
    private final Map<ConcurrentCameraGraphs, ConcurrentSessionSequencer> sequencers = new LinkedHashMap();
    private final Set<CameraGraphId> pending = new LinkedHashSet();

    public final ConcurrentSessionSequencer getSequencer(CameraGraphId cameraGraphId, ConcurrentCameraGraphs concurrentCameraGraphs) {
        ConcurrentSessionSequencer concurrentSessionSequencer;
        synchronized (this.lock) {
            try {
                if (this.sequencers.containsKey(concurrentCameraGraphs)) {
                    this.pending.remove(cameraGraphId);
                    Set<CameraGraphId> cameraGraphIds = concurrentCameraGraphs.getCameraGraphIds();
                    if (cameraGraphIds == null || !cameraGraphIds.isEmpty()) {
                        Iterator<T> it = cameraGraphIds.iterator();
                        while (it.hasNext()) {
                            if (this.pending.contains((CameraGraphId) it.next())) {
                                ConcurrentSessionSequencer concurrentSessionSequencer2 = this.sequencers.get(concurrentCameraGraphs);
                                if (concurrentSessionSequencer2 == null) {
                                    throw new IllegalStateException("Required value was null.");
                                }
                                concurrentSessionSequencer = concurrentSessionSequencer2;
                                return concurrentSessionSequencer;
                            }
                        }
                    }
                    ConcurrentSessionSequencer concurrentSessionSequencerRemove = this.sequencers.remove(concurrentCameraGraphs);
                    if (concurrentSessionSequencerRemove == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    concurrentSessionSequencer = concurrentSessionSequencerRemove;
                    return concurrentSessionSequencer;
                }
                ConcurrentSessionSequencer concurrentSessionSequencer3 = new ConcurrentSessionSequencer();
                this.sequencers.put(concurrentCameraGraphs, concurrentSessionSequencer3);
                this.pending.addAll(SetsKt.minus(concurrentCameraGraphs.getCameraGraphIds(), cameraGraphId));
                return concurrentSessionSequencer3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
