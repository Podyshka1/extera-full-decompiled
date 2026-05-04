package kotlinx.coroutines.channels;

import kotlinx.coroutines.Waiter;

/* JADX INFO: loaded from: classes5.dex */
final class WaiterEB {
    public final Waiter waiter;

    public WaiterEB(Waiter waiter) {
        this.waiter = waiter;
    }

    public String toString() {
        return "WaiterEB(" + this.waiter + ')';
    }
}
