package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.ThreadContextElement;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR \u0010\u000b\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\f0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/internal/ThreadState;", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Lkotlin/coroutines/CoroutineContext;", "n", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "values", _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/Object;", "elements", "Lkotlinx/coroutines/ThreadContextElement;", "[Lkotlinx/coroutines/ThreadContextElement;", "i", "append", _UrlKt.FRAGMENT_ENCODE_SET, "element", "value", "restore", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
final class ThreadState {

    @JvmField
    public final CoroutineContext context;
    private final ThreadContextElement<Object>[] elements;
    private int i;
    private final Object[] values;

    public ThreadState(CoroutineContext coroutineContext, int i) {
        this.context = coroutineContext;
        this.values = new Object[i];
        this.elements = new ThreadContextElement[i];
    }

    public final void append(ThreadContextElement<?> element, Object value) {
        Object[] objArr = this.values;
        int i = this.i;
        objArr[i] = value;
        ThreadContextElement<Object>[] threadContextElementArr = this.elements;
        this.i = i + 1;
        threadContextElementArr[i] = element;
    }

    public final void restore(CoroutineContext context) {
        int length = this.elements.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            this.elements[length].restoreThreadContext(context, this.values[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }
}
