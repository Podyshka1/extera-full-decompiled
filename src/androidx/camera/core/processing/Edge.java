package androidx.camera.core.processing;

import androidx.core.util.Consumer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class Edge implements Consumer {
    private Consumer mListener;

    @Override // androidx.core.util.Consumer
    public void accept(Object obj) {
        Intrinsics.checkNotNull(this.mListener, "Listener is not set.");
        this.mListener.accept(obj);
    }

    public void setListener(Consumer consumer) {
        this.mListener = consumer;
    }
}
