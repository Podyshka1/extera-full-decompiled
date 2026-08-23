package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.Waiter;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/channels/WaiterEB;", _UrlKt.FRAGMENT_ENCODE_SET, "waiter", "Lkotlinx/coroutines/Waiter;", "<init>", "(Lkotlinx/coroutines/Waiter;)V", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
final class WaiterEB {

    @JvmField
    public final Waiter waiter;

    public WaiterEB(Waiter waiter) {
        this.waiter = waiter;
    }

    public String toString() {
        return "WaiterEB(" + this.waiter + ')';
    }
}
