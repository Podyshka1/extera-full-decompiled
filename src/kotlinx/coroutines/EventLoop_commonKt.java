package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006\"\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006*\u001e\b\u0002\u0010\n\u001a\u0004\b\u0000\u0010\b\"\b\u0012\u0004\u0012\u00028\u00000\t2\b\u0012\u0004\u0012\u00028\u00000\t¨\u0006\u000b"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "timeMillis", "delayToNanos", "(J)J", "Lkotlinx/coroutines/internal/Symbol;", "DISPOSED_TASK", "Lkotlinx/coroutines/internal/Symbol;", "CLOSED_EMPTY", "T", "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Queue", "kotlinx-coroutines-core"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EventLoop_commonKt {
    private static final Symbol DISPOSED_TASK = new Symbol("REMOVED_TASK");
    private static final Symbol CLOSED_EMPTY = new Symbol("CLOSED_EMPTY");

    public static final long delayToNanos(long j) {
        if (j <= 0) {
            return 0L;
        }
        return j >= 9223372036854L ? LongCompanionObject.MAX_VALUE : j * 1000000;
    }
}
