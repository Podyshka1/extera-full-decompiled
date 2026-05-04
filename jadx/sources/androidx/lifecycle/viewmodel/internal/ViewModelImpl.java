package androidx.lifecycle.viewmodel.internal;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ViewModelImpl {
    private volatile boolean isCleared;
    private final SynchronizedObject lock = new SynchronizedObject();
    private final Map keyToCloseables = new LinkedHashMap();
    private final Set closeables = new LinkedHashSet();

    public final void clear() {
        if (this.isCleared) {
            return;
        }
        this.isCleared = true;
        synchronized (this.lock) {
            try {
                Iterator it = this.keyToCloseables.values().iterator();
                while (it.hasNext()) {
                    closeWithRuntimeException((AutoCloseable) it.next());
                }
                Iterator it2 = this.closeables.iterator();
                while (it2.hasNext()) {
                    closeWithRuntimeException((AutoCloseable) it2.next());
                }
                this.closeables.clear();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void addCloseable(String key, AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(closeable, "closeable");
        if (this.isCleared) {
            closeWithRuntimeException(closeable);
            return;
        }
        synchronized (this.lock) {
            autoCloseable = (AutoCloseable) this.keyToCloseables.put(key, closeable);
        }
        closeWithRuntimeException(autoCloseable);
    }

    public final AutoCloseable getCloseable(String key) {
        AutoCloseable autoCloseable;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            autoCloseable = (AutoCloseable) this.keyToCloseables.get(key);
        }
        return autoCloseable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeWithRuntimeException(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(autoCloseable);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }
}
