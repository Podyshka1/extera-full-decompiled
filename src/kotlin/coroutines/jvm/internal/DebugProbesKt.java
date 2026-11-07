package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes.dex
  exteraGram-full-universal-20261004.apk:DebugProbesKt.bin
 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a$\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0081\u0080\u0004\u001a\u0016\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0081\u0080\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0081\u0080\u0004¨\u0006\b"}, d2 = {"probeCoroutineCreated", "Lkotlin/coroutines/Continuation;", "T", "completion", "probeCoroutineResumed", _UrlKt.FRAGMENT_ENCODE_SET, "frame", "probeCoroutineSuspended", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class DebugProbesKt {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    public static final <T> Continuation<T> probeCoroutineCreated(Continuation<? super T> continuation) {
        return continuation;
    }

    @SinceKotlin(version = "1.3")
    public static final void probeCoroutineResumed(Continuation<?> continuation) {
    }

    @SinceKotlin(version = "1.3")
    public static final void probeCoroutineSuspended(Continuation<?> continuation) {
    }
}
