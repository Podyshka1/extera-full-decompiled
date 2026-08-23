package okhttp3.internal.connection;

import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.p025ws.RealWebSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class AddressPolicy {
    public final long backoffDelayMillis;
    public final int backoffJitterMillis;
    public final int minimumConcurrentCalls;

    public AddressPolicy() {
        this(0, 0L, 0, 7, null);
    }

    public AddressPolicy(int i, long j, int i2) {
        this.minimumConcurrentCalls = i;
        this.backoffDelayMillis = j;
        this.backoffJitterMillis = i2;
    }

    public /* synthetic */ AddressPolicy(int i, long j, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS : j, (i3 & 4) != 0 ? 100 : i2);
    }
}
