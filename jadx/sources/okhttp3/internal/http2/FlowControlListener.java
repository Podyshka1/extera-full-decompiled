package okhttp3.internal.http2;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.flowcontrol.WindowCounter;

/* JADX INFO: loaded from: classes.dex */
public interface FlowControlListener {
    void receivingConnectionWindowChanged(WindowCounter windowCounter);

    void receivingStreamWindowChanged(int i, WindowCounter windowCounter, long j);

    public static final class None implements FlowControlListener {
        public static final None INSTANCE = new None();

        @Override // okhttp3.internal.http2.FlowControlListener
        public void receivingConnectionWindowChanged(WindowCounter windowCounter) {
            Intrinsics.checkNotNullParameter(windowCounter, "windowCounter");
        }

        @Override // okhttp3.internal.http2.FlowControlListener
        public void receivingStreamWindowChanged(int i, WindowCounter windowCounter, long j) {
            Intrinsics.checkNotNullParameter(windowCounter, "windowCounter");
        }

        private None() {
        }
    }
}
