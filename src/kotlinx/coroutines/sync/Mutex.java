package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H¦@¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\t\u001a\u00020\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00038&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/sync/Mutex;", _UrlKt.FRAGMENT_ENCODE_SET, "owner", _UrlKt.FRAGMENT_ENCODE_SET, "tryLock", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unlock", "(Ljava/lang/Object;)V", "isLocked", "()Z", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public interface Mutex {
    boolean isLocked();

    Object lock(Object obj, Continuation<? super Unit> continuation);

    boolean tryLock(Object owner);

    void unlock(Object owner);

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    static /* synthetic */ boolean tryLock$default(Mutex mutex, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: tryLock");
            return false;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        return mutex.tryLock(obj);
    }

    static /* synthetic */ Object lock$default(Mutex mutex, Object obj, Continuation continuation, int i, Object obj2) {
        if (obj2 != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: lock");
            return null;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        return mutex.lock(obj, continuation);
    }

    static /* synthetic */ void unlock$default(Mutex mutex, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: unlock");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        mutex.unlock(obj);
    }
}
