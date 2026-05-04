package androidx.camera.camera2.pipe.internal;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.Request;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameCaptureQueue implements AutoCloseable {
    private boolean closed;
    private final Object lock = new Object();
    private final ArrayDeque queue = new ArrayDeque();

    public final class FrameCaptureImpl implements AutoCloseable {
    }

    public final FrameCaptureImpl remove(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        synchronized (this.lock) {
            if (this.closed) {
                return null;
            }
            Iterator<E> it = this.queue.iterator();
            if (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                throw null;
            }
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(null);
            return null;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            Unit unit = Unit.INSTANCE;
            Iterator<E> it = this.queue.iterator();
            if (!it.hasNext()) {
                this.queue.clear();
            } else {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                OutputStatus.Companion.m1679getERROR_OUTPUT_ABORTEDU7r42EA();
                throw null;
            }
        }
    }
}
