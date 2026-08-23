package androidx.camera.camera2.pipe;

import android.view.Surface;
import androidx.camera.camera2.pipe.core.Log;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraSurfaceManager {
    public static final Companion Companion = new Companion(null);
    private static final AtomicInt surfaceTokenDebugIds = AtomicFU.atomic(0);
    private final Object lock = new Object();
    private final Map useCountMap = new LinkedHashMap();
    private final Set listeners = new LinkedHashSet();

    public interface SurfaceListener {
        void onSurfaceActive(Surface surface);

        void onSurfaceInactive(Surface surface);
    }

    public final class SurfaceToken implements AutoCloseable {
        private final AtomicBoolean closed;
        private final int debugId;
        private final Surface surface;
        final /* synthetic */ CameraSurfaceManager this$0;

        public SurfaceToken(CameraSurfaceManager cameraSurfaceManager, Surface surface) {
            Intrinsics.checkNotNullParameter(surface, "surface");
            this.this$0 = cameraSurfaceManager;
            this.surface = surface;
            this.debugId = CameraSurfaceManager.Companion.getSurfaceTokenDebugIds$camera_camera2_pipe().incrementAndGet();
            this.closed = AtomicFU.atomic(false);
        }

        public final Surface getSurface$camera_camera2_pipe() {
            return this.surface;
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.closed.compareAndSet(false, true)) {
                this.this$0.onTokenClosed$camera_camera2_pipe(this);
            }
        }

        public String toString() {
            return "SurfaceToken-" + this.debugId;
        }
    }

    public final void addListener(SurfaceListener listener) {
        Set setKeySet;
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            try {
                this.listeners.add(listener);
                Map map = this.useCountMap;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    if (((Number) entry.getValue()).intValue() > 0) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                setKeySet = linkedHashMap.keySet();
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            listener.onSurfaceActive((Surface) it.next());
        }
    }

    public final void removeListener(SurfaceListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            this.listeners.remove(listener);
        }
    }

    public final AutoCloseable registerSurface$camera_camera2_pipe(Surface surface) {
        SurfaceToken surfaceToken;
        List list;
        Intrinsics.checkNotNullParameter(surface, "surface");
        if (!surface.isValid() && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "registerSurface: Surface " + surface + " isn't valid!");
        }
        synchronized (this.lock) {
            try {
                surfaceToken = new SurfaceToken(this, surface);
                Integer num = (Integer) this.useCountMap.get(surface);
                int iIntValue = (num != null ? num.intValue() : 0) + 1;
                this.useCountMap.put(surface, Integer.valueOf(iIntValue));
                list = iIntValue == 1 ? CollectionsKt.toList(this.listeners) : null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((SurfaceListener) it.next()).onSurfaceActive(surface);
            }
        }
        return surfaceToken;
    }

    public final void onTokenClosed$camera_camera2_pipe(SurfaceToken surfaceToken) {
        Surface surface$camera_camera2_pipe;
        List list;
        Intrinsics.checkNotNullParameter(surfaceToken, "surfaceToken");
        synchronized (this.lock) {
            try {
                surface$camera_camera2_pipe = surfaceToken.getSurface$camera_camera2_pipe();
                Integer num = (Integer) this.useCountMap.get(surface$camera_camera2_pipe);
                if (num == null) {
                    throw new IllegalStateException(("Surface " + surface$camera_camera2_pipe + " (" + surfaceToken + ") has no use count").toString());
                }
                int iIntValue = num.intValue() - 1;
                this.useCountMap.put(surface$camera_camera2_pipe, Integer.valueOf(iIntValue));
                if (iIntValue == 0) {
                    list = CollectionsKt.toList(this.listeners);
                    this.useCountMap.remove(surface$camera_camera2_pipe);
                } else {
                    list = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((SurfaceListener) it.next()).onSurfaceInactive(surface$camera_camera2_pipe);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AtomicInt getSurfaceTokenDebugIds$camera_camera2_pipe() {
            return CameraSurfaceManager.surfaceTokenDebugIds;
        }
    }
}
